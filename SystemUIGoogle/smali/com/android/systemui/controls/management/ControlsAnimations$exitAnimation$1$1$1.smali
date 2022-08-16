.class public final Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlsAnimations.kt"


# instance fields
.field public final synthetic $it:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;->$it:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;->$it:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
