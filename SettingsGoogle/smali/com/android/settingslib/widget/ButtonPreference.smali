.class public Lcom/android/settingslib/widget/ButtonPreference;
.super Landroidx/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGravity:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/ButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    sget v0, Lcom/android/settingslib/widget/R$layout;->settingslib_button_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/widget/ButtonPreference;->mTitle:Ljava/lang/CharSequence;

    sget v2, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/widget/ButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/android/settingslib/widget/R$styleable;->ButtonPreference:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/android/settingslib/widget/R$styleable;->ButtonPreference_android_gravity:I

    const p3, 0x800003

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/ButtonPreference;->mGravity:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    sget v0, Lcom/android/settingslib/widget/R$id;->settingslib_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mGravity:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ButtonPreference;->setGravity(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ButtonPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x800003

    iput p1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mGravity:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mGravity:I

    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mGravity:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
