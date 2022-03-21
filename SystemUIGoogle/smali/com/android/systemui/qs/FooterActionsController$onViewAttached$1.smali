.class final Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController;->onViewAttached()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getFalsingManager$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getActivityStarter$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method
