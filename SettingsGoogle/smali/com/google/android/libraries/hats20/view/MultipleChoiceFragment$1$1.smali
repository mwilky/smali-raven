.class Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;
.super Ljava/lang/Object;
.source "MultipleChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget-object v0, v0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "HatsLibMultiChoiceFrag"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget-object v1, v1, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-static {v1}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget v5, v5, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->val$idx:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->access$102(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget-object v1, v1, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-static {v1}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->access$300(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    const-string v1, "User selected response: "

    iget-object v4, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget-object v4, v4, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-static {v4}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;->this$1:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;

    iget p0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->val$idx:I

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->nextPageOrSubmit()V

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setIsMultipleChoiceSelectionAnimating(Z)V

    return-void

    :cond_3
    :goto_2
    const-string p0, "Activity was null, finishing or destroyed while attempting to navigate to the next next page. Likely the user rotated the device before the Runnable executed."

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
