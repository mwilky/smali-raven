.class Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "FaceNotificationDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->onReenrollDialogConfirm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDidShowFailureDialog:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    const-string p1, "FaceNotificationDialogF"

    const-string p2, "Not launching enrollment. Failed to remove existing face(s)."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->mDidShowFailureDialog:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->mDidShowFailureDialog:Z

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->access$000(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->mDidShowFailureDialog:Z

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationDialogFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
