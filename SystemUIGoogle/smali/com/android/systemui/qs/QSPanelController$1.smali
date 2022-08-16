.class public final Lcom/android/systemui/qs/QSPanelController$1;
.super Ljava/lang/Object;
.source "QSPanelController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    :cond_0
    return-void
.end method
