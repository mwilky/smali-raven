.class Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FulfillBottom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->createFadeOutAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
