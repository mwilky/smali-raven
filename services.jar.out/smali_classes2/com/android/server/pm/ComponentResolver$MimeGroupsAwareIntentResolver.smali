.class abstract Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MimeGroupsAwareIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/util/Pair<",
        "+",
        "Landroid/content/pm/parsing/component/ParsedComponent;",
        "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
        ">;R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;"
    }
.end annotation


# instance fields
.field private mIsUpdatingMimeGroup:Z

.field private final mMimeGroupToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<",
            "TF;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    iget-object v1, p1, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    iget-boolean v0, p1, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return-void
.end method

.method private applyMimeGroups(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$300()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/parsing/component/ParsedComponent;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private equalLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateFilter(Landroid/util/Pair;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilter(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Landroid/util/Pair;)V

    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method


# virtual methods
.method public addFilter(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->applyMimeGroups(Landroid/util/Pair;)V

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic addFilter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Landroid/util/Pair;)V

    return-void
.end method

.method protected removeFilterInternal(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    return-void
.end method

.method protected bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilterInternal(Landroid/util/Pair;)V

    return-void
.end method

.method public updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    move-object v6, v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1, v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->updateFilter(Landroid/util/Pair;)Z

    move-result v5

    or-int/2addr v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return v3
.end method
