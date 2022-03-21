.class public Lcom/android/systemui/media/dialog/MediaOutputGroupDialog;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.source "MediaOutputGroupDialog.java"


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->resetGroupMediaDevices()V

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;

    iget-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-direct {p1, p3}, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getHeaderIconRes()I
    .locals 0

    sget p0, Lcom/android/systemui/R$drawable;->ic_arrow_back:I

    return p0
.end method

.method getHeaderIconSize()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->media_output_dialog_header_back_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method getHeaderSubtitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->media_output_dialog_single_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->media_output_dialog_multiple_devices:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->media_output_dialog_add_output:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getStopButtonVisibility()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method onHeaderIconClick()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method refresh()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputGroupDialog;->getHeaderIconSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->media_output_dialog_header_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr v1, v0

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
