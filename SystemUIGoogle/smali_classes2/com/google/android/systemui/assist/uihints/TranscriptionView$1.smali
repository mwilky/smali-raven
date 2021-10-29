.class Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranscriptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/TranscriptionView;->hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

.field final synthetic val$finishHide:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;->val$finishHide:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;->val$finishHide:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
