.class public final synthetic Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SevereBatteryIntroDialogController"

    const-string p2, "Click turn on button"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG_TURN_ON:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    iget-object p2, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance p1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
