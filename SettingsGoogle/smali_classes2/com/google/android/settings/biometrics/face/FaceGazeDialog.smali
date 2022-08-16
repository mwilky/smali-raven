.class public Lcom/google/android/settings/biometrics/face/FaceGazeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FaceGazeDialog.java"


# instance fields
.field private mButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$45mHtaDUPQ-9ZvxNKCoaNnFpzSc(Lcom/google/android/settings/biometrics/face/FaceGazeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$giT2tY2C9rReF4c5WNy0oFsK8M0(Lcom/google/android/settings/biometrics/face/FaceGazeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static newInstance()Lcom/google/android/settings/biometrics/face/FaceGazeDialog;
    .locals 1

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;

    invoke-direct {v0}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory;->newBuilder(Landroid/content/Context;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p1

    const v0, 0x7f04095f

    invoke-virtual {p1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setTitle(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p1

    const v0, 0x7f04095e

    invoke-virtual {p1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setMessage(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceGazeDialog;)V

    const v1, 0x7f04095d

    invoke-virtual {p1, v1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/FaceGazeDialog;)V

    const p0, 0x7f04095c

    invoke-virtual {p1, p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public setButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
