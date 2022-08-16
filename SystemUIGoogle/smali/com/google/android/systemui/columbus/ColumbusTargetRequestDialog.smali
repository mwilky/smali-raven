.class public final Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "ColumbusTargetRequestDialog.java"


# instance fields
.field public mContent:Landroid/widget/TextView;

.field public mNegativeButton:Landroid/widget/Button;

.field public mPositiveButton:Landroid/widget/Button;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0065

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0b06c4

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0b01a8

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mContent:Landroid/widget/TextView;

    const p1, 0x7f0b04fa

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    const p1, 0x7f0b0488

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
