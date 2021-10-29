.class Lcom/google/android/systemui/face/FaceNotificationDialogFactory;
.super Ljava/lang/Object;
.source "FaceNotificationDialogFactory.java"


# direct methods
.method public static synthetic $r8$lambda$321klq9YWrru4DkOFAEv8LwAp8s(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->lambda$createReenrollFailureDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4EEishK1_ffZwBB4FitSYHMosyY(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->lambda$createReenrollDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MlNmSoKMc6m6BSJ8xm_CmFQBPoQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->lambda$createReenrollDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static createReenrollDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->face_reenroll_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v1, Lcom/android/systemui/R$string;->face_reenroll_dialog_content:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget v1, Lcom/android/systemui/R$string;->face_reenroll_dialog_confirm:I

    new-instance v2, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    sget p0, Lcom/android/systemui/R$string;->face_reenroll_dialog_cancel:I

    sget-object v1, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda2;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method private static createReenrollFailureDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->face_reenroll_failure_dialog_content:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget p0, Lcom/android/systemui/R$string;->ok:I

    sget-object v1, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method private static synthetic lambda$createReenrollDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->onReenrollDialogConfirm(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$createReenrollDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$createReenrollFailureDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static onReenrollDialogConfirm(Landroid/content/Context;)V
    .locals 6

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-string v0, "FaceNotificationDialogF"

    const-string v1, "Not launching enrollment. Face manager was null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/hardware/face/Face;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    new-instance v3, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    return-void
.end method
