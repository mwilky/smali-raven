.class Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;
.super Ljava/lang/Object;
.source "SurveyPromptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/SurveyPromptActivity;->wireUpCloseButton()V
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

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    const-string v0, "o"

    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->access$000(Lcom/google/android/libraries/hats20/SurveyPromptActivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$2;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
