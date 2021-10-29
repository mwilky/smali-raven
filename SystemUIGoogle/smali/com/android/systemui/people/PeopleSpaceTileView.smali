.class public Lcom/android/systemui/people/PeopleSpaceTileView;
.super Landroid/widget/LinearLayout;
.source "PeopleSpaceTileView.java"


# instance fields
.field private mNameView:Landroid/widget/TextView;

.field private mPersonIconView:Landroid/widget/ImageView;

.field private mTileView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->people_space_tile_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p4, :cond_0

    sget p3, Lcom/android/systemui/R$layout;->people_space_activity_list_divider:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mNameView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_person_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPersonIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPersonIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
