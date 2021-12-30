.class Lcom/google/android/libraries/hats20/view/RatingFragment$2;
.super Ljava/lang/Object;
.source "RatingFragment.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;


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

.field final synthetic val$starRatingBar:Lcom/google/android/libraries/hats20/ui/StarRatingBar;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/view/RatingFragment;Lcom/google/android/libraries/hats20/ui/StarRatingBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->val$starRatingBar:Lcom/google/android/libraries/hats20/ui/StarRatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->val$starRatingBar:Lcom/google/android/libraries/hats20/ui/StarRatingBar;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$300(Lcom/google/android/libraries/hats20/view/RatingFragment;)Lcom/google/android/libraries/hats20/model/QuestionRating;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getNumIcons()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$400(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$100(Lcom/google/android/libraries/hats20/view/RatingFragment;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->access$202(Lcom/google/android/libraries/hats20/view/RatingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->isResponseSatisfactory()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment$2;->this$0:Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-interface {p1, v0, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method
