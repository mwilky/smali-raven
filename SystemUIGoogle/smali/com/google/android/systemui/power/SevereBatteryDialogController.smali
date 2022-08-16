.class public final Lcom/google/android/systemui/power/SevereBatteryDialogController;
.super Ljava/lang/Object;
.source "SevereBatteryDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static $r8$lambda$pmsLeorF_eQjAQum2CrkoJmumaw(Lcom/google/android/systemui/power/SevereBatteryDialogController;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SevereBatteryDialogController"

    const-string v1, "Click cancel button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;->SEVERE_BATTERY_DIALOG_CANCEL:Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$uCpv-Lu8CBSiZRb6r787JxJ8O9I(Lcom/google/android/systemui/power/SevereBatteryDialogController;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SevereBatteryDialogController"

    const-string v1, "Click turn on button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;->SEVERE_BATTERY_DIALOG_TURN_ON:Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;

    iget-object v1, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/service/dreams/IDreamManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    return-void
.end method


# virtual methods
.method public showSevereBatteryDialog()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const-string v1, "SevereBatteryDialogController"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to query dream manager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const-string p0, "Device is idle, doze or keyguard"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.google.android.flipendo.api"

    const-string v6, "get_flipendo_state"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "flipendo_state"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    const-string v4, "level"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    int-to-double v0, v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v4, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v4, 0x7f13068c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v4, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    const v5, 0x7f13068b

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f13012c

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f1304ef

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget-object v0, Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;->SEVERE_BATTERY_DIALOG:Lcom/google/android/systemui/power/SevereBatteryDialogController$SevereBatteryDialogEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_7
    return-void

    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialogShowing = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
