.class public final Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;
.super Ljava/lang/Object;
.source "LetterboxEduAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$endCallback:Ljava/lang/Runnable;

.field public final synthetic val$startCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$startCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$endCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$endCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$startCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
