.class Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GameMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

.field final synthetic val$destinationView:Landroid/view/View;

.field final synthetic val$newTitleResId:I


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->val$newTitleResId:I

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->val$destinationView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$000(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->game_menu_main:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$100(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$100(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    sget v0, Lcom/android/systemui/R$id;->game_menu_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->val$newTitleResId:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->val$destinationView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$002(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;->val$destinationView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
