.class Lcom/google/android/systemui/gamedashboard/RevealButton$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/RevealButton;->bounce(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

.field final synthetic val$bounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/RevealButton;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$4;->this$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$4;->val$bounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$4;->this$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->access$600(Lcom/google/android/systemui/gamedashboard/RevealButton;)Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$4;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
