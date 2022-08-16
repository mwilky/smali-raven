.class public Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
.super Ljava/lang/Object;
.source "HomepagePreferenceLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;
    }
.end annotation


# instance fields
.field private mIcon:Landroid/view/View;

.field private mIconPaddingStart:I

.field private mIconVisible:Z

.field private mText:Landroid/view/View;

.field private mTextPaddingStart:I


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    const p0, 0x7f06010b

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x7f0d02d9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    const v0, 0x7f0d05fe

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    iget-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setIconVisible(Z)V

    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setIconPaddingStart(I)V

    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setTextPaddingStart(I)V

    return-void
.end method

.method public setIconPaddingStart(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTextPaddingStart(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method
