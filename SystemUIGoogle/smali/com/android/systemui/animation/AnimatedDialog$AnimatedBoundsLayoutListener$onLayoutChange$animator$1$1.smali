.class public final Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->access$setCurrentAnimator$p(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method
