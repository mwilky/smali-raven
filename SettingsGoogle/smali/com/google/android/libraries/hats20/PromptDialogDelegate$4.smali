.class Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;
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


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$500(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;->this$0:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-static {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->access$000(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->dismissAllowingStateLoss()V

    return-void
.end method
