.class public final Lcom/android/keyguard/FontInterpolator;
.super Ljava/lang/Object;
.source "FontInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/FontInterpolator$InterpKey;,
        Lcom/android/keyguard/FontInterpolator$VarFontKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontInterpolator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontInterpolator.kt\ncom/android/keyguard/FontInterpolator\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,223:1\n37#2:224\n36#2,3:225\n6136#3,2:228\n6136#3,2:230\n*S KotlinDebug\n*F\n+ 1 FontInterpolator.kt\ncom/android/keyguard/FontInterpolator\n*L\n153#1:224\n153#1:225,3\n166#1:228,2\n167#1:230,2\n*E\n"
.end annotation


# static fields
.field public static final EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;


# instance fields
.field public final interpCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/keyguard/FontInterpolator$InterpKey;",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field public final tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

.field public final tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

.field public final verFontCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/keyguard/FontInterpolator$VarFontKey;",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    sput-object v0, Lcom/android/keyguard/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/FontInterpolator;->verFontCache:Ljava/util/HashMap;

    new-instance v0, Lcom/android/keyguard/FontInterpolator$InterpKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/android/keyguard/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    iput-object v0, p0, Lcom/android/keyguard/FontInterpolator;->tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

    new-instance v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/android/keyguard/FontInterpolator$VarFontKey;-><init>(IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    return-void
.end method

.method public static coerceInWithStep(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_2

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    :cond_1
    :goto_0
    div-float/2addr p0, p2

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
    .locals 12

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/keyguard/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/keyguard/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    :cond_5
    array-length v4, v0

    if-nez v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    if-eqz v4, :cond_8

    array-length v4, v3

    if-nez v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    if-eqz v4, :cond_8

    return-object p1

    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/FontInterpolator;->tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

    iput-object p1, v4, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iput-object p2, v4, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iput p3, v4, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    iget-object v5, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/Font;

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    new-instance v4, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;

    invoke-direct {v4, p0, p3}, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;-><init>(Lcom/android/keyguard/FontInterpolator;F)V

    array-length v5, v0

    if-le v5, v1, :cond_a

    new-instance v5, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$1;

    invoke-direct {v5}, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$1;-><init>()V

    array-length v6, v0

    if-le v6, v1, :cond_a

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_a
    array-length v5, v3

    if-le v5, v1, :cond_b

    new-instance v5, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$2;

    invoke-direct {v5}, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$2;-><init>()V

    array-length v6, v3

    if-le v6, v1, :cond_b

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    move v7, v6

    :goto_4
    array-length v8, v0

    if-lt v6, v8, :cond_11

    array-length v8, v3

    if-ge v7, v8, :cond_c

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;->sourceId:I

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;->index:I

    iget-object v3, v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lcom/android/keyguard/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_d

    new-instance v3, Lcom/android/keyguard/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;

    invoke-direct {v3}, Lcom/android/keyguard/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/FontInterpolator;->verFontCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/keyguard/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_e
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    new-array v2, v2, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    check-cast v2, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v0, v2}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    new-instance v3, Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/keyguard/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/keyguard/FontInterpolator;->verFontCache:Ljava/util/HashMap;

    new-instance p2, Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_f

    new-instance v1, Lcom/android/keyguard/FontInterpolator$VarFontKey$_init_$lambda-1$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/android/keyguard/FontInterpolator$VarFontKey$_init_$lambda-1$$inlined$sortBy$1;-><init>()V

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    invoke-direct {p2, p3, p1, v2}, Lcom/android/keyguard/FontInterpolator$VarFontKey;-><init>(IILjava/util/ArrayList;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_5
    array-length v8, v0

    const/4 v9, 0x0

    if-ge v6, v8, :cond_12

    aget-object v8, v0, v6

    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_12
    move-object v8, v9

    :goto_6
    array-length v10, v3

    if-ge v7, v10, :cond_13

    aget-object v10, v3, v7

    invoke-virtual {v10}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_13
    move-object v10, v9

    :goto_7
    if-nez v8, :cond_14

    move v11, v1

    goto :goto_8

    :cond_14
    if-nez v10, :cond_15

    const/4 v11, -0x1

    goto :goto_8

    :cond_15
    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    :goto_8
    if-nez v11, :cond_16

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v9, v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v10, v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    new-instance v7, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v7, v8, v6}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v6, v9

    move v8, v10

    goto :goto_9

    :cond_16
    if-gez v11, :cond_17

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v10, v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v8, v6, v9}, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    new-instance v9, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v9, v8, v6}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v8, v7

    move-object v7, v9

    move v6, v10

    goto :goto_9

    :cond_17
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v8, v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v10, v9, v7}, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    new-instance v9, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v9, v10, v7}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move-object v7, v9

    :goto_9
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    goto/16 :goto_4
.end method
