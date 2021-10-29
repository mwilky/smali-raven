.class Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;
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

.field final synthetic val$sourceView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;->val$sourceView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;->val$sourceView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
