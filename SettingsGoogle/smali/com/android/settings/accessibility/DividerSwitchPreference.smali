.class public final Lcom/android/settings/accessibility/DividerSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "DividerSwitchPreference.java"


# instance fields
.field private mDividerAllowBelow:Ljava/lang/Boolean;

.field private mDividerAllowedAbove:Ljava/lang/Boolean;

.field private mSwitchVisibility:I


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowedAbove:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowBelow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mSwitchVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
