.class Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;
.super Ljava/lang/Object;
.source "MultipleChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->createScrollViewContents()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

.field final synthetic val$idx:I

.field final synthetic val$newlyAddedAnswers:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;[Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->val$newlyAddedAnswers:[Landroid/view/View;

    iput p3, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->val$newlyAddedAnswers:[Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->access$000(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;[Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->setIsMultipleChoiceSelectionAnimating(Z)V

    new-instance v0, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1$1;-><init>(Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment$1;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
