.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0600f5

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f060081

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f0405c1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const v2, 0x7f0d0166

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0xff

    if-ge v1, v3, :cond_0

    const v1, 0x7f020457

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    const p2, 0x7f0d057b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0d0164

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    const v1, 0x7f020457

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const p0, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

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
