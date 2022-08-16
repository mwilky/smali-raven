.class public final Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SidefpsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayVisibility(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;->$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
