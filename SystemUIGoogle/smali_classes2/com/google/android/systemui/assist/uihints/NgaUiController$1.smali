.class Lcom/google/android/systemui/assist/uihints/NgaUiController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NgaUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/NgaUiController;->completeInvocation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;


# direct methods
.method public static synthetic $r8$lambda$cw89BLESJ4J4ONrNWICzZdtSqII(Lcom/google/android/systemui/assist/uihints/NgaUiController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->mCancelled:Z

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$300(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->mCancelled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$000(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$100(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->setFullListening()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$000(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$002(Lcom/google/android/systemui/assist/uihints/NgaUiController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->access$200(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
