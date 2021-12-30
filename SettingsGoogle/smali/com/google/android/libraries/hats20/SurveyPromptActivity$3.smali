.class Lcom/google/android/libraries/hats20/SurveyPromptActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurveyPromptActivity.java"


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

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$3;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$3;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-static {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->access$100(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
