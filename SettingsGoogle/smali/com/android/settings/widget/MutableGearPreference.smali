.class public Lcom/android/settings/widget/MutableGearPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "MutableGearPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledAlphaValue:I

.field private mGear:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/utils/ColorUtil;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mDisabledAlphaValue:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d04d7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    iget-boolean p1, p0, Lcom/android/settings/widget/GearPreference;->mGearState:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MutableGearPreference;->setGearEnabled(Z)V

    return-void
.end method

.method public setGearEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/widget/MutableGearPreference;->mDisabledAlphaValue:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/widget/GearPreference;->mGearState:Z

    return-void
.end method
