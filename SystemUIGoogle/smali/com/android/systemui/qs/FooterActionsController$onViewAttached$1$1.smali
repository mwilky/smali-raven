.class final Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/FooterActionsController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getQsPanelController$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    return-void
.end method
