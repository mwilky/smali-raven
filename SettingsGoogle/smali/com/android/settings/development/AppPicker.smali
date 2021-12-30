.class public Lcom/android/settings/development/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AppPicker$AppListAdapter;,
        Lcom/android/settings/development/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

.field private mDebuggableOnly:Z

.field private mIncludeNothing:Z

.field private mNonSystemOnly:Z

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/development/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mNonSystemOnly:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mIncludeNothing:Z

    return p0
.end method

.method private handleBackPressed()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/ListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.extra.NON_SYSTEM"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->mNonSystemOnly:Z

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.extra.INCLUDE_NOTHING"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->mIncludeNothing:Z

    new-instance p1, Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/ListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/AppPicker;->handleBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
