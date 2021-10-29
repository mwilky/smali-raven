.class Lcom/android/systemui/assist/AssistOrbController$2;
.super Ljava/lang/Object;
.source "AssistOrbController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistOrbController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbController;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistOrbController;->access$300(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbController;->access$200(Lcom/android/systemui/assist/AssistOrbController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbController;->access$100(Lcom/android/systemui/assist/AssistOrbController;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistOrbController;->access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController$2;->this$0:Lcom/android/systemui/assist/AssistOrbController;

    invoke-static {p0, v0}, Lcom/android/systemui/assist/AssistOrbController;->access$400(Lcom/android/systemui/assist/AssistOrbController;Z)V

    :cond_3
    return-void
.end method
