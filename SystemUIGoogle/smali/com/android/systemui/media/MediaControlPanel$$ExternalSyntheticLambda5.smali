.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabledChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsSeekBarEnabled:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsSeekBarEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->updateSeekBarVisibility()V

    :goto_0
    return-void
.end method

.method public final update(Landroid/view/View;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
