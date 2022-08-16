.class public abstract Landroidx/slice/builders/TemplateSliceBuilder;
.super Ljava/lang/Object;
.source "TemplateSliceBuilder.java"


# instance fields
.field public final mBuilder:Landroidx/slice/Slice$Builder;

.field public mSpecs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    sget-object v0, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, p2}, Landroid/app/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Landroidx/collection/ArraySet;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/ArrayList;

    check-cast p0, Landroidx/slice/builders/ListBuilder;

    sget-object p1, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/slice/builders/impl/ListBuilderImpl;

    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    new-instance v1, Landroidx/slice/SystemClock;

    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p2, v0, p1, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroidx/slice/builders/impl/ListBuilderImpl;

    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    new-instance v1, Landroidx/slice/SystemClock;

    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p2, v0, p1, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p2, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    iget-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {p2, p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iput-object p2, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid specs found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 6

    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    iget-object v4, v3, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v5, p1, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v3, Landroidx/slice/SliceSpec;->mRevision:I

    iget v4, p1, Landroidx/slice/SliceSpec;->mRevision:I

    if-lt v3, v4, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
