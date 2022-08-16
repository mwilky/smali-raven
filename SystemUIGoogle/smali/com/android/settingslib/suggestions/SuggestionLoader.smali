.class public final Lcom/android/settingslib/suggestions/SuggestionLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settingslib/suggestions/SuggestionLoader;->deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    return-void
.end method

.method public final deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    if-eq v0, p0, :cond_3

    check-cast v0, Ljava/util/List;

    :cond_3
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onCanceled$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCanceled$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final bridge synthetic onReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onReset$com$android$settingslib$utils$AsyncLoader()V

    return-void
.end method

.method public final onReset$com$android$settingslib$utils$AsyncLoader()V
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onStartLoading$com$android$settingslib$utils$AsyncLoader()V

    return-void
.end method

.method public final onStartLoading$com$android$settingslib$utils$AsyncLoader()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method
