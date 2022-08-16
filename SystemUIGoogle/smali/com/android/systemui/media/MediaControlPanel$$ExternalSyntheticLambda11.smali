.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/smartspace/SmartspaceAction;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;ILandroid/app/smartspace/SmartspaceAction;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$2:Landroid/app/smartspace/SmartspaceAction;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget v6, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$1:I

    iget-object v7, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$2:Landroid/app/smartspace/SmartspaceAction;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;->f$3:Landroid/view/View;

    iget-object v0, p1, Lcom/android/systemui/media/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, -0x1

    const/4 v9, 0x0

    if-ne v6, v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object v1, p1, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v0, v3, v9, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object v3, p1, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/MediaUiEvent;

    const/4 v2, 0x0

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    :goto_0
    const/16 v0, 0x2f8

    iget v1, p1, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    invoke-virtual {p1, v0, v6, v1}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(III)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.apps.gsa.smartspace.extra.SMARTSPACE_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v0, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_OPEN_IN_FOREGROUND"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create intent from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaControlPanel"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_4
    :goto_1
    move v0, v9

    :goto_2
    if-eqz v0, :cond_5

    iget-object p0, p1, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/media/MediaControlPanel$1;

    move-result-object v1

    invoke-interface {p0, v0, v9, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    iget-object p0, p1, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iput-boolean v8, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    :goto_4
    return-void
.end method
