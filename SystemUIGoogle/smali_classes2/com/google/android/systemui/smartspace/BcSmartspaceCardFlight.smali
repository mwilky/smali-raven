.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source "BcSmartspaceCardFlight.java"


# instance fields
.field private mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCardPromptLogoView:Landroid/widget/ImageView;

.field private mCardPromptView:Landroid/widget/TextView;

.field private mGateValueView:Landroid/widget/TextView;

.field private mQrCodeView:Landroid/widget/ImageView;

.field private mSeatValueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->card_prompt:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->card_prompt_logo:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptLogoView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->boarding_pass_ui:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->gate_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mGateValueView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->seat_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mSeatValueView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->flight_qr_code:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mQrCodeView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method protected setCardPrompt(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardFlight"

    const-string p1, "No card prompt view to update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setCardPromptLogo(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptLogoView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardFlight"

    const-string p1, "No card prompt logo view to update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setFlightGateText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mGateValueView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardFlight"

    const-string p1, "No flight gate value view to update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setFlightQrCode(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mQrCodeView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardFlight"

    const-string p1, "No flight QR code view to update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setFlightSeatText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mSeatValueView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardFlight"

    const-string p1, "No flight seat value view to update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "cardPrompt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "cardPromptBitmap"

    if-nez v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "qrCodeBitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setFlightQrCode(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mBoardingPassUI:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    const-string p3, "gate"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_3

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setFlightGateText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setFlightGateText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string p3, "seat"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setFlightSeatText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setFlightSeatText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setCardPrompt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->setCardPromptLogo(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->mCardPromptLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move p2, p3

    :cond_8
    :goto_4
    return p2
.end method
