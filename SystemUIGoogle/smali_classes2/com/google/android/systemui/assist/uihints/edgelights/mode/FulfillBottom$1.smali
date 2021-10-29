.class Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FulfillBottom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->animateExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$100(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$100(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    :cond_0
    return-void
.end method
