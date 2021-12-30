.class Lcom/google/android/libraries/hats20/view/RatingFragment$1;
.super Ljava/lang/Object;
.source "RatingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/view/RatingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

.field final synthetic val$rating:I

.field final synthetic val$ratingImageIconsContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->val$ratingImageIconsContainer:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->val$ratingImageIconsContainer:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$000(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/ViewGroup;)V

    iget p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->val$rating:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Rating selected, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HatsLibRatingFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$100(Lcom/google/android/libraries/hats20/view/RatingFragment;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    iget v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->val$rating:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$202(Lcom/google/android/libraries/hats20/view/RatingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$1;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->nextPageOrSubmit()V

    return-void
.end method
