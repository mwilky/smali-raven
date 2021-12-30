.class Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;
.super Ljava/lang/Object;
.source "SurveyPromptActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/SurveyPromptActivity;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->access$200(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$4;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-static {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->access$200(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
