.class public final Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "PrivacyDotDecorProviderFactory.kt"


# instance fields
.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->res:Landroid/content/res/Resources;

    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/decor/DecorProvider;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    new-instance v0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v1, 0x7f0b050d

    const v2, 0x7f0e01d8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    aput-object v0, p0, v4

    new-instance v0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v1, 0x7f0b050e

    const v2, 0x7f0e01d9

    const/4 v5, 0x2

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    aput-object v0, p0, v3

    new-instance v0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v1, 0x7f0b050b

    const v2, 0x7f0e01d6

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    aput-object v0, p0, v5

    new-instance v0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v1, 0x7f0b050c

    const v2, 0x7f0e01d7

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    aput-object v0, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
