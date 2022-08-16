.class public final Lcom/android/systemui/media/MediaControlPanel$1;
.super Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.source "MediaControlPanel.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    const/16 p1, 0x1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-void
.end method


# virtual methods
.method public final getCurrentBottomCornerRadius()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel$1;->getCurrentTopCornerRadius()F

    move-result p0

    return p0
.end method

.method public final getCurrentTopCornerRadius()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0705b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method
