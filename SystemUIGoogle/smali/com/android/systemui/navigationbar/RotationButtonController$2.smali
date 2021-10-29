.class Lcom/android/systemui/navigationbar/RotationButtonController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$2;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$2;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$600(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/navigationbar/RotationButton;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->hide()Z

    return-void
.end method
