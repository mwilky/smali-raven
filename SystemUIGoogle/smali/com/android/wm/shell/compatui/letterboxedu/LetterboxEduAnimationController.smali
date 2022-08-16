.class public final Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;
.super Ljava/lang/Object;
.source "LetterboxEduAnimationController.java"


# static fields
.field public static final DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

.field public static final ENTER_ANIM_START_DELAY_MILLIS:I


# instance fields
.field public final mAnimStyleResId:I

.field public mBackgroundDimAnimator:Landroid/animation/Animator;

.field public mDialogAnimation:Landroid/view/animation/Animation;

.field public final mPackageName:Ljava/lang/String;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    new-instance v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "LetterboxEduAnimation"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302d6

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mAnimStyleResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public final loadAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mAnimStyleResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "Failed to load animation "

    const-string v1, "LetterboxEduAnimation"

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method
