.class Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FulfillPerimeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

.field final synthetic val$set:Landroid/animation/AnimatorSet;

.field final synthetic val$view:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;


# direct methods
.method public static synthetic $r8$lambda$wy7uXx3zRbsFQ23hkNey1xF5cqw(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->lambda$onAnimationEnd$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Landroid/animation/AnimatorSet;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->val$set:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->val$view:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->access$102(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->val$view:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
