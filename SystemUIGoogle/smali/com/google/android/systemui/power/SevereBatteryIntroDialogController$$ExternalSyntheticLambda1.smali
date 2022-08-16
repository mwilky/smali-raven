.class public final synthetic Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SevereBatteryIntroDialogController"

    const-string p2, "Click cancel button"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG_CANCEL:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    return-void
.end method
