.class Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;
.super Ljava/lang/Object;
.source "PromptDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

.field final synthetic val$requestCode:I

.field final synthetic val$siteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->val$siteId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$000(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->val$siteId:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$100(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/model/SurveyController;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$200(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    move-result-object v3

    iget p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->val$requestCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$300(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->startSurveyActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Z)V

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$402(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Z)Z

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$000(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->dismissAllowingStateLoss()V

    return-void
.end method
