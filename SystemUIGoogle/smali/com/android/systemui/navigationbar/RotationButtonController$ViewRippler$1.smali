.class Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;
.super Ljava/lang/Object;
.source "RotationButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;->this$1:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;->this$1:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->access$700(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;->this$1:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->access$700(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;->this$1:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->access$700(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
