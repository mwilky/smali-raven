.class public final Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LetterboxEduAnimationController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;->this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;->this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    return-void
.end method
