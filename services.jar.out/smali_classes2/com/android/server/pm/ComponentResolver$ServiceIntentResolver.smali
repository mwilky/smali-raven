.class final Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Landroid/content/pm/parsing/component/ParsedService;",
        "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    iget-object v1, p1, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget v0, p1, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addService(Landroid/content/pm/parsing/component/ParsedService;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addFilter(Landroid/util/Pair;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedService;

    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " permission "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3

    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isFilterStopped(Landroid/util/Pair;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/server/pm/ComponentResolver;->access$500(Landroid/util/Pair;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isFilterStopped(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->isFilterStopped(Landroid/util/Pair;I)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;II)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$400()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedService;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$300()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$300()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v2, v0, v3, p3}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$300()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v10, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v11

    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    move-object v2, v9

    move-object v3, v0

    move-object v5, v11

    move v6, p3

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    iget v3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v6

    :goto_0
    const/high16 v7, 0x800000

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    move v3, v5

    if-eqz v4, :cond_7

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isVisibleToInstantApp()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, v11, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v5, :cond_7

    return-object v1

    :cond_7
    if-nez v3, :cond_8

    iget-boolean v5, v11, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_8

    return-object v1

    :cond_8
    iget-boolean v5, v11, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_9

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v5

    if-eqz v5, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    iput-object v8, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_a
    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v5

    iput v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v5

    iput-boolean v5, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getLabelRes()I

    move-result v5

    iput v5, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getIcon()I

    move-result v5

    iput v5, v1, Landroid/content/pm/ResolveInfo;->icon:I

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v1, Landroid/content/pm/ResolveInfo;->system:Z

    return-object v1
.end method

.method protected bridge synthetic newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$400()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$400()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez p4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method removeService(Landroid/content/pm/parsing/component/ParsedService;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method
