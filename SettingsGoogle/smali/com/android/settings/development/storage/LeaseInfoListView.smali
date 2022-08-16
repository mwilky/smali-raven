.class public Lcom/android/settings/development/storage/LeaseInfoListView;
.super Landroid/app/ListActivity;
.source "LeaseInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

.field private mBlobInfo:Landroid/app/blob/BlobInfo;

.field private mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public static synthetic $r8$lambda$eUCA5j5d8s8YdVdnpceG2dKLjOc(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/storage/LeaseInfoListView;->lambda$getButtonOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zh2WfIEvj66-eFcMRbGXXVXri4o(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/storage/LeaseInfoListView;->lambda$getDialogOnClickListener$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlobInfo(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/app/blob/BlobInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflater(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V

    return-object v0
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V

    return-object v0
.end method

.method private getFooterView()Landroid/widget/Button;
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f040805

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getButtonOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getHeaderView()Landroid/widget/LinearLayout;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f06006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v2, 0x7f0d00e9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d00e8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d00e7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d00ea

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v6}, Landroid/app/blob/BlobInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v6}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    const v1, 0x7f040454

    invoke-virtual {p0, v1, v2}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {p0}, Landroid/app/blob/BlobInfo;->getSizeBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings/development/storage/SharedDataUtils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private synthetic lambda$getButtonOnClickListener$0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040804

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$getDialogOnClickListener$1(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    iget-object p2, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {p1, p2}, Landroid/app/blob/BlobStoreManager;->deleteBlob(Landroid/app/blob/BlobInfo;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to delete blob: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LeaseInfoListView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    const-class p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "BLOB_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    new-instance p1, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error fetching leases for shared data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v0}, Landroid/app/blob/BlobInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LeaseInfoListView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getHeaderView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getFooterView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
