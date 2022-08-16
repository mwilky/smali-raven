.class public final Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController;->onViewAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $fgsFooter:Landroid/view/View;

.field public final synthetic $securityFooter:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->$securityFooter:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->$fgsFooter:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->$securityFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->$fgsFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;->$securityFooter:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mTextContainer:Landroid/view/View;

    if-eqz p0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumberContainer:Landroid/view/View;

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_4

    const/4 v2, -0x2

    :cond_4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_3
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
