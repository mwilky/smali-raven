.class public Lcom/android/systemui/people/PeopleSpaceActivity;
.super Landroid/app/Activity;
.source "PeopleSpaceActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field private mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static synthetic $r8$lambda$iaS2r-tDGGYc-ZTPta7NUxFFxEA(Lcom/android/systemui/people/PeopleSpaceActivity;Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceActivity;->lambda$setTileView$0(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/PeopleSpaceActivity$1;-><init>(Lcom/android/systemui/people/PeopleSpaceActivity;)V

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/people/PeopleSpaceActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private buildActivity()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPriorityTiles()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getRecentTiles()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PeopleSpaceActivity"

    const-string v4, "Couldn\'t retrieve conversations"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v0, Lcom/android/systemui/R$layout;->people_space_activity_no_conversations:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/high16 v0, 0x1020000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x112002d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    :cond_0
    sget v2, Lcom/android/systemui/R$layout;->people_space_activity:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    sget v2, Lcom/android/systemui/R$id;->priority:I

    sget v3, Lcom/android/systemui/R$id;->priority_tiles:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileViews(IILjava/util/List;)V

    sget v0, Lcom/android/systemui/R$id;->recent:I

    sget v2, Lcom/android/systemui/R$id;->recent_tiles:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileViews(IILjava/util/List;)V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleSpaceActivity;->setActivityResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setTileView$0(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceActivity;->storeWidgetConfiguration(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    return-void
.end method

.method private setActivityResult(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setTileView(Lcom/android/systemui/people/PeopleSpaceTileView;Landroid/app/people/PeopleSpaceTile;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/PeopleSpaceTileView;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->avatar_size_for_medium:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(Landroid/content/Context;IF)I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/PeopleSpaceTileView;->setPersonIcon(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v0, p2}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    new-instance v1, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleSpaceActivity;Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceActivity"

    const-string p2, "Couldn\'t retrieve shortcut information"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setTileViews(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/PeopleSpaceTile;

    new-instance v3, Lcom/android/systemui/people/PeopleSpaceTileView;

    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, p2

    if-ne v1, v6, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    invoke-direct {v3, v4, p1, v5, v6}, Lcom/android/systemui/people/PeopleSpaceTileView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/people/PeopleSpaceActivity;->setTileView(Lcom/android/systemui/people/PeopleSpaceTileView;Landroid/app/people/PeopleSpaceTile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private storeWidgetConfiguration(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->finishActivity()V

    return-void
.end method


# virtual methods
.method public dismissActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->buildActivity()V

    return-void
.end method
