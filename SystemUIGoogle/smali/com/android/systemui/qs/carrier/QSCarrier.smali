.class public Lcom/android/systemui/qs/carrier/QSCarrier;
.super Landroid/widget/LinearLayout;
.source "QSCarrier.java"


# instance fields
.field private mCarrierText:Landroid/widget/TextView;

.field private mIsSingleCarrier:Z

.field private mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

.field private mMobileGroup:Landroid/view/View;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mProviderModelInitialized:Z

.field private mSpacer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    return-void
.end method

.method private hasValidTypeContentDescription(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method getRSSIView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileGroup:Landroid/view/View;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->mobile_combo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileGroup:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mobile_roaming:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->qs_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mSpacer:Landroid/view/View;

    return-void
.end method

.method public setCarrierText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    
    sget v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I
    
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateState(Lcom/android/systemui/qs/carrier/CellSignalState;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mIsSingleCarrier:Z

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

    iput-boolean p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mIsSingleCarrier:Z

    iget-boolean v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileGroup:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mSpacer:Landroid/view/View;

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_b

    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x1010036

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean p2, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->providerModelBehavior:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    if-nez p2, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    iget-boolean p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    if-nez p2, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModelInitialized:Z

    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    const-string v1, ", "

    if-eqz v0, :cond_8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->data_connection_roaming:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/carrier/QSCarrier;->hasValidTypeContentDescription(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    return v2
.end method
