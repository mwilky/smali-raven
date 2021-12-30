.class public Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CredentialManagementAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialManagementAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAuthenticationViewHolder"
.end annotation


# instance fields
.field private final mAppIconView:Landroid/widget/ImageView;

.field private final mAppNameView:Landroid/widget/TextView;

.field private final mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mExpandedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpanderIconView:Landroid/widget/ImageView;

.field private final mNumberOfUrisView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public static synthetic $r8$lambda$OsNXKvILekBzduv1SZYLxZfh6Fw(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0d0099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const v1, 0x7f0d009a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    const v1, 0x7f0d03e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    const v1, 0x7f0d0216

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const v3, 0x7f0d05f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$300(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d0095

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindChildView(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    new-instance v1, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$700(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method private bindPolicyView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$500(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$600(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$600(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const p1, 0x10803a1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$600(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$200(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12003d

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$400(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$400(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method
