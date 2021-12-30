.class public Lcom/android/settings/slices/SlicePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "SlicePreference.java"


# instance fields
.field private mSliceView:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f050381

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0d0504

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    iget-object p0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
