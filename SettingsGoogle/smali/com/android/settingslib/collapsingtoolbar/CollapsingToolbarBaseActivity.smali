.class public Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CollapsingToolbarBaseActivity.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mCustomizeLayoutResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCustomizeLayoutResId:I

    return-void
.end method

.method private disableCollapsingToolbarLayoutScrollingBehavior()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    new-instance v2, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity$1;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCustomizeLayoutResId:I

    if-lez p1, :cond_0

    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastS()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCustomizeLayoutResId:I

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/material/resources/TextAppearanceConfig;->setShouldLoadFontSynchronously(Z)V

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$layout;->collapsing_toolbar_base_layout:I

    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->collapsing_toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->disableCollapsingToolbarLayoutScrollingBehavior()V

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setContentView(I)V
    .locals 1

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
