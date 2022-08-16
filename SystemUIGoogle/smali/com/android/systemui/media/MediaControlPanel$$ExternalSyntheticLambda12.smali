.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    iget-object v0, p1, Lcom/android/systemui/media/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(III)V

    iget-object v0, p1, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget v1, p1, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v2, p1, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->DISMISS_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v0, v3, v1, v2, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
