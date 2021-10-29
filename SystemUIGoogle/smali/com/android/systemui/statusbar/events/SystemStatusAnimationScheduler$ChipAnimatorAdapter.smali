.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SystemStatusAnimationScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChipAnimatorAdapter"
.end annotation


# instance fields
.field private final endState:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private final viewCreator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->endState:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onChipAnimationEnd(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->endState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getHasPersistentDot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->endState:I

    :goto_0
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$setAnimationState$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->viewCreator:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onChipAnimationStart(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method
