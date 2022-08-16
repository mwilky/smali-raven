.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/ImageButton;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$1:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$3:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$4:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$2:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$3:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;->f$4:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    iget v4, p1, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v5, p1, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    const v7, 0x7f0b0050

    if-ne v0, v7, :cond_0

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_0
    const v7, 0x7f0b0051

    if-ne v0, v7, :cond_1

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_PREV:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_1
    const v7, 0x7f0b004f

    if-ne v0, v7, :cond_2

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_NEXT:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_OTHER:Lcom/android/systemui/media/MediaUiEvent;

    :goto_0
    iget-object v3, v3, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    const/16 v0, 0x2f8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(III)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    instance-of p1, v2, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_3

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_3
    instance-of p1, p0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_4
    return-void
.end method
