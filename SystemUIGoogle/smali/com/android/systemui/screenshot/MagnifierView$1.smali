.class public final Lcom/android/systemui/screenshot/MagnifierView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MagnifierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/MagnifierView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MagnifierView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView$1;->this$0:Lcom/android/systemui/screenshot/MagnifierView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/MagnifierView$1;->this$0:Lcom/android/systemui/screenshot/MagnifierView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/MagnifierView$1;->this$0:Lcom/android/systemui/screenshot/MagnifierView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
