.class public Lcom/android/systemui/qs/QSFooterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "QSFooterViewController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QSFooterView;",
        ">;",
        "Lcom/android/systemui/qs/QSFooter;"
    }
.end annotation


# instance fields
.field private final mBuildText:Landroid/widget/TextView;

.field private final mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

.field private final mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static synthetic $r8$lambda$9A4T_43SBWj_Liw2YVUUP-Jl3ds(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NASq1B-6K5EFvckIHNgjIM4jWOM(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSFooterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->build:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFooterView;->updateExpansion()V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    sub-int/2addr p4, p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->getNumQuickTiles()I

    move-result p0

    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/qs/FooterActionsController;->updateAnimator(II)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->build_number_clip_data_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->build_number_copy_toast:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSFooterView;->disable(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/FooterActionsController;->disable(I)V

    return-void
.end method

.method protected onInit()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelController;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->updateEverything()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterViewController;->setListening(Z)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/FooterActionsController;->setExpanded(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpanded(Z)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsController;->setExpansion(F)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooterView;->setKeyguardShowing()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->setKeyguardShowing()V
    
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsController;->updatePowerViewVisibility(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFooterActionsController:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsController;->setListening(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
