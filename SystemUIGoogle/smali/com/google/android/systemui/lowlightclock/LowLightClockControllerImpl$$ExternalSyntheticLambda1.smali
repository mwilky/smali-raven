.class public final synthetic Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$FooterClearAllListener;
.implements Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onClearAll()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    return-void
.end method

.method public final update(Landroid/view/View;I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
