.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/doze/DozeSensors$Callback;
.implements Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrubbingChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/MediaData;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsScrubbing:Z

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsScrubbing:Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSensorPulse(IFF[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/doze/DozeTriggers;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IFF[F)V

    return-void
.end method

.method public final update(Landroid/view/View;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, [Landroid/graphics/Bitmap;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/ImageView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
