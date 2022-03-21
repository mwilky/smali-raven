.class final Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$isTunerEnabled(Lcom/android/systemui/qs/FooterActionsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getTunerService$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2$1;

    iget-object v2, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getContext(Lcom/android/systemui/qs/FooterActionsController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->tuner_toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getTunerService$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$startSettingsActivity(Lcom/android/systemui/qs/FooterActionsController;)V

    return-void
.end method
