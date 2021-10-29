.class Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullListening.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createUpdateStateOnEndAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)Landroid/animation/Animator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->access$002(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->access$100(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V

    return-void
.end method
