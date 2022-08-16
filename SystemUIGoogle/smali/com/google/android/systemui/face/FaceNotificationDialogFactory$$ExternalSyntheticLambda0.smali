.class public final synthetic Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    const-class p1, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    if-nez p1, :cond_0

    const-string p1, "FaceNotificationDialogF"

    const-string p2, "Not launching enrollment. Face manager was null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1302f6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;-><init>()V

    const p2, 0x7f13052f

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/hardware/face/Face;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {p2, v3, v0, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    new-instance v1, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    :goto_0
    return-void
.end method
