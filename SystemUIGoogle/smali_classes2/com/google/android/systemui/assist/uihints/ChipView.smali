.class public Lcom/google/android/systemui/assist/uihints/ChipView;
.super Landroid/widget/FrameLayout;
.source "ChipView.java"


# instance fields
.field private final BACKGROUND_DARK:Landroid/graphics/drawable/Drawable;

.field private final BACKGROUND_LIGHT:Landroid/graphics/drawable/Drawable;

.field private final TEXT_COLOR_DARK:I

.field private final TEXT_COLOR_LIGHT:I

.field private mChip:Landroid/widget/LinearLayout;

.field private mIconView:Landroid/widget/ImageView;

.field private mLabelView:Landroid/widget/TextView;

.field private mSpaceView:Landroid/widget/Space;


# direct methods
.method public static synthetic $r8$lambda$186g-LOD3fOLnCQhHUVjX5G57Rs(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/ChipView;->lambda$setTapAction$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget p2, Lcom/android/systemui/R$drawable;->assist_chip_background_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_DARK:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/android/systemui/R$drawable;->assist_chip_background_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_LIGHT:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/android/systemui/R$color;->assist_chip_text_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_DARK:I

    sget p2, Lcom/android/systemui/R$color;->assist_chip_text_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_LIGHT:I

    return-void
.end method

.method private static synthetic lambda$setTapAction$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ChipView"

    const-string v0, "Pending intent cancelled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setTapAction(Landroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ChipView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/assist/uihints/ChipView$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->chip_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mChip:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->chip_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->chip_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->chip_element_padding:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mSpaceView:Landroid/widget/Space;

    return-void
.end method

.method setChip(Landroid/os/Bundle;)Z
    .locals 6

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ChipView"

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p0, "Neither icon nor label provided; ignoring chip"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v4, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mSpaceView:Landroid/widget/Space;

    invoke-virtual {v0, v4}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mSpaceView:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    const-string v0, "tap_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p0, "No tap action provided; ignoring chip"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/ChipView;->setTapAction(Landroid/app/PendingIntent;)V

    const/4 p0, 0x1

    return p0
.end method

.method setHasDarkBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mChip:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_DARK:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_LIGHT:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_DARK:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_LIGHT:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method updateTextSize(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
