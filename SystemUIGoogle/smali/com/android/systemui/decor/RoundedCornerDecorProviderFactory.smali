.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "RoundedCornerDecorProviderFactory.kt"


# instance fields
.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-boolean v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/decor/DecorProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-boolean v1, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    iget-boolean v2, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    const v3, 0x7f0b056b

    const v4, 0x7f0b056a

    const v5, 0x7f0b056d

    const v6, 0x7f0b056c

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    new-instance v2, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v2, v6, v8, v9, v0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v2, v1, v9

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v5, v8, v10, v2}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v0, v1, v8

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v4, v7, v9, v2}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v0, v1, v10

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v3, v7, v10, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v0, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-array v1, v10, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    new-instance v2, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v2, v6, v8, v9, v0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v2, v1, v9

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v5, v8, v10, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v0, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-array v1, v10, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    new-instance v2, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v2, v4, v7, v9, v0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v2, v1, v9

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v3, v7, v10, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    aput-object v0, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
