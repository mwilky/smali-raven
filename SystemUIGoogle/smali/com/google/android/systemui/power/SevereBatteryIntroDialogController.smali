.class public final Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;
.super Ljava/lang/Object;
.source "SevereBatteryIntroDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public mShowFlipendoIntro:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# virtual methods
.method public final showFlipendoIntro()Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.google.android.flipendo.api"

    const-string v1, "get_flipendo_state"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "flipendo_show_intro_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "flipendo_state"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showSevereBatteryIntroDialog()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mShowFlipendoIntro:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->showFlipendoIntro()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f13068c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f130627

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f13012c

    new-instance v3, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f1304ef

    new-instance v3, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mSevereBatteryIntroDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget-object v0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_3
    return v2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->showFlipendoIntro()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mShowFlipendoIntro:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialogShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showFlipendoIntro = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;->mShowFlipendoIntro:Z

    const-string v0, "SevereBatteryIntroDialogController"

    invoke-static {v2, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method
