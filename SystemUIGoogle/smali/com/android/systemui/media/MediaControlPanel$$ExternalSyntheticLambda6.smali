.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v2, v2, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/MediaUiEvent;->ACTION_SEEK:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    const/16 v0, 0x2f8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(III)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
