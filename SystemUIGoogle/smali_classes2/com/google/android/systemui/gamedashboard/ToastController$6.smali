.class Lcom/google/android/systemui/gamedashboard/ToastController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ToastController;->hide()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ToastController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController$6;->this$0:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController$6;->this$0:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ToastController;->access$200(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController$6;->this$0:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    return-void
.end method
