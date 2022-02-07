.class public final Lcom/android/systemui/sensorprivacy/SensorUseDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "SensorUseDialog.kt"


# instance fields
.field private final clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final sensor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseDialog;->sensor:I

    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/SensorUseDialog;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/android/systemui/sensorprivacy/SensorUseDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->sensor_use_started_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->sensor_use_started_title_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DialogTitle;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const/4 v5, 0x0

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_camera_dialog_title:I

    goto :goto_0

    :cond_1
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_camera_dialog_title:I

    goto :goto_0

    :cond_2
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_dialog_title:I

    :goto_0
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/DialogTitle;->setText(I)V

    sget v1, Lcom/android/systemui/R$id;->sensor_use_microphone_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v7, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v5

    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/android/systemui/R$id;->sensor_use_camera_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eq p2, v2, :cond_5

    if-ne p2, v4, :cond_6

    :cond_5
    move v6, v5

    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    if-eq p2, v3, :cond_9

    if-eq p2, v2, :cond_8

    if-eq p2, v4, :cond_7

    move p2, v5

    goto :goto_3

    :cond_7
    sget p2, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_camera_dialog_content:I

    goto :goto_3

    :cond_8
    sget p2, Lcom/android/systemui/R$string;->sensor_privacy_start_use_camera_dialog_content:I

    goto :goto_3

    :cond_9
    sget p2, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_dialog_content:I

    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    const v0, 0x10407c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method
