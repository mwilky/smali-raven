.class public final synthetic Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QuickQSPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QuickQSPanelController;

    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget v1, v0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-eq p1, v1, :cond_0

    iput p1, v0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->setTiles()V

    :cond_0
    return-void
.end method
