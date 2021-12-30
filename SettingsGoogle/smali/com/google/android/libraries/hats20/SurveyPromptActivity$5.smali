.class Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;
.super Ljava/lang/Object;
.source "SurveyPromptActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->access$300(Lcom/google/android/libraries/hats20/SurveyPromptActivity;)Lcom/google/android/libraries/hats20/IdleResourceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/IdleResourceManager;->setIsThankYouAnimating(Z)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity$5;->this$0:Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
