.class public Lcom/android/settings/utils/SettingsDividerItemDecoration;
.super Lcom/google/android/setupdesign/DividerItemDecoration;
.source "SettingsDividerItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method protected isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method
