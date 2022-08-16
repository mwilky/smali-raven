.class public final Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceNotificationBroadcastReceiver.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FaceNotificationBCR"

    const-string p2, "Received broadcast with null action."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const-string p2, "face_action_show_reenroll_dialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1302f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f1302f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1302f3

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$$ExternalSyntheticLambda1;-><init>()V

    const v0, 0x7f1302f2

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
