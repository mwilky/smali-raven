.class public Lcom/android/server/wm/InputConfigAdapter;
.super Ljava/lang/Object;
.source "InputConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    }
.end annotation


# static fields
.field public static final INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;"
        }
    .end annotation
.end field

.field public static final INPUT_FEATURE_TO_CONFIG_MASK:I

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v4, 0x2

    const/16 v5, 0x800

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v5, 0x4

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    invoke-static {v0, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/wm/InputConfigAdapter;->computeMask(Ljava/util/List;)I

    move-result v0

    sput v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v5, 0x800000

    invoke-direct {v4, v5, v3, v1}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v3, 0x40000

    const/16 v5, 0x200

    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v5, 0x20000000

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6, v2}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    invoke-static {v0, v4, v1, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/wm/InputConfigAdapter;->computeMask(Ljava/util/List;)I

    move-result v0

    sput v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    return-void
.end method

.method public static applyMapping(ILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    iget v3, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-boolean v4, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInverted:Z

    if-eq v3, v4, :cond_0

    iget v2, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static computeMask(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    iget v1, v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getInputConfigFromWindowParams(III)I
    .locals 1

    const/16 v0, 0x7dd

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(ILjava/util/List;)I

    move-result p1

    or-int/2addr p0, p1

    sget-object p1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(ILjava/util/List;)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static getMask()I
    .locals 2

    sget v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    sget v1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x40

    return v0
.end method
