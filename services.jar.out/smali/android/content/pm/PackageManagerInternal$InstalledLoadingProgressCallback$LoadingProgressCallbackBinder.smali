.class Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingProgressCallbackBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;Landroid/content/pm/PackageManagerInternal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;-><init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .locals 4

    iget-object v0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    iget-object v0, v0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;->INSTANCE:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;

    iget-object v2, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
