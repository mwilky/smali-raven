.class public Lcom/android/settings/core/CategoryMixin;
.super Ljava/lang/Object;
.source "CategoryMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/CategoryMixin$PackageReceiver;,
        Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;,
        Lcom/android/settings/core/CategoryMixin$CategoryListener;,
        Lcom/android/settings/core/CategoryMixin$CategoryHandler;
    }
.end annotation


# static fields
.field private static final sTileDenylist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoriesUpdateTaskCount:I

.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/core/CategoryMixin$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFirstOnResume:Z

.field private final mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;


# direct methods
.method public static synthetic $r8$lambda$q6S9_XPx9OFGk58MyDQGxIqVS-0(Ljava/util/Set;Lcom/android/settings/core/CategoryMixin$CategoryListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/core/CategoryMixin;->lambda$onCategoriesChanged$0(Ljava/util/Set;Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCategoriesUpdateTaskCount(Lcom/android/settings/core/CategoryMixin;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/core/CategoryMixin;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCategoriesUpdateTaskCount(Lcom/android/settings/core/CategoryMixin;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCategories(Lcom/android/settings/core/CategoryMixin;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/CategoryMixin;->updateCategories(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsTileDenylist()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/core/CategoryMixin$PackageReceiver;-><init>(Lcom/android/settings/core/CategoryMixin;Lcom/android/settings/core/CategoryMixin$PackageReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onCategoriesChanged$0(Ljava/util/Set;Lcom/android/settings/core/CategoryMixin$CategoryListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/settings/core/CategoryMixin$CategoryListener;->onCategoriesChanged(Ljava/util/Set;)V

    return-void
.end method

.method private updateCategories(Z)V
    .locals 2

    iget v0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addToDenylist(Landroid/content/ComponentName;)V
    .locals 0

    sget-object p0, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onCategoriesChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settings/core/CategoryMixin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/core/CategoryMixin$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    if-eqz v0, :cond_0

    const-string v0, "CategoryMixin"

    const-string v1, "Skip categories update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/CategoryMixin;->updateCategories()V

    return-void
.end method

.method public removeCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeFromDenylist(Landroid/content/ComponentName;)V
    .locals 0

    sget-object p0, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCategories()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/core/CategoryMixin;->updateCategories(Z)V

    return-void
.end method
