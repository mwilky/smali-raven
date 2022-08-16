.class Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAdapter"
.end annotation


# instance fields
.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mEmptyStateSet:[I

.field private final mGroupExpandedStateSet:[I

.field private final mGroupPosition:I

.field private mHeaderView:Landroid/view/ViewGroup;

.field private final mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsListExpanded:Z

.field private mListView:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field private final mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method static bridge synthetic -$$Nest$msaveState(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->saveState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const v1, 0x10100a8

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupExpandedStateSet:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mEmptyStateSet:[I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;-><init>(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iput p3, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p2, v0}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;ILcom/android/settings/TrustedCredentialsFragment$ChildAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private checkGroupExpandableAndStartWarningActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result p0

    return p0
.end method

.method private getGroupIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v1, 0x0

    const v2, 0x101006f

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private refreshViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupExpandedStateSet:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mEmptyStateSet:[I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private saveState()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "Container"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    const-string v1, "IsListExpanded"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChildrenCount(I)I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChildId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->checkGroupExpandableAndStartWarningActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    return-void
.end method

.method public setContainerView(Landroid/widget/LinearLayout;Landroid/os/Bundle;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setSaveFromParentEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0157

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v1, 0x7f0d02b1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0285

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->getGroupIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f0d02a9

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const-class p1, Landroid/os/Parcelable;

    const-string v0, "Container"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public setExpandIfAvailable(ZLandroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "IsListExpanded"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public showDivider(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v0, 0x7f0d02ab

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showHeader(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
