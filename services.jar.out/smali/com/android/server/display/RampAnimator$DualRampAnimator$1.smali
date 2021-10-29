.class Lcom/android/server/display/RampAnimator$DualRampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator$DualRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->access$1100(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->access$1100(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
