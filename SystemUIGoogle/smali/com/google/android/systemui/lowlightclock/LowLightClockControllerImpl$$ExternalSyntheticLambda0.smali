.class public final synthetic Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;

    return-void
.end method


# virtual methods
.method public final onChargingStatusChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
