.class public Lcom/android/settingslib/widget/MainSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "MainSwitchPreference.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Lcom/android/settingslib/widget/R$layout;->settingslib_main_switch_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private registerListenerToSwitchBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    iget-object v2, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    sget v0, Lcom/android/settingslib/widget/R$id;->settingslib_main_switch_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar;

    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->registerListenerToSwitchBar()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-super {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateStatus(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    :cond_0
    return-void
.end method
