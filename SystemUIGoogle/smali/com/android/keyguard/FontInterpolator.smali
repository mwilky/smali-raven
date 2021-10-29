.class public final Lcom/android/keyguard/FontInterpolator;
.super Ljava/lang/Object;
.source "FontInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/FontInterpolator$InterpKey;,
        Lcom/android/keyguard/FontInterpolator$VarFontKey;,
        Lcom/android/keyguard/FontInterpolator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontInterpolator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontInterpolator.kt\ncom/android/keyguard/FontInterpolator\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,223:1\n37#2,2:224\n6106#3,2:226\n6106#3,2:228\n*E\n*S KotlinDebug\n*F\n+ 1 FontInterpolator.kt\ncom/android/keyguard/FontInterpolator\n*L\n153#1,2:224\n166#1,2:226\n167#1,2:228\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguard/FontInterpolator$Companion;

.field private static final EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;


# instance fields
.field private final interpCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/keyguard/FontInterpolator$InterpKey;",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

.field private final tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

.field private final verFontCache:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/FontInterpolator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/FontInterpolator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/FontInterpolator;->Companion:Lcom/android/keyguard/FontInterpolator$Companion;

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

    invoke-direct {v0, v2, v2, v1}, Lcom/android/keyguard/FontInterpolator$VarFontKey;-><init>(IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    return-void
.end method

.method public static final synthetic access$adjustItalic(Lcom/android/keyguard/FontInterpolator;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/FontInterpolator;->adjustItalic(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$adjustWeight(Lcom/android/keyguard/FontInterpolator;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/FontInterpolator;->adjustWeight(F)F

    move-result p0

    return p0
.end method

.method private final adjustItalic(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/keyguard/FontInterpolator;->coerceInWithStep(FFFF)F

    move-result p0

    return p0
.end method

.method private final adjustWeight(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/keyguard/FontInterpolator;->coerceInWithStep(FFFF)F

    move-result p0

    return p0
.end method

.method private final coerceInWithStep(FFFF)F
    .locals 0

    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    div-float/2addr p0, p4

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p4

    return p0
.end method

.method private final lerp([Landroid/graphics/fonts/FontVariationAxis;[Landroid/graphics/fonts/FontVariationAxis;Lkotlin/jvm/functions/Function3;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/fonts/FontVariationAxis;",
            "[",
            "Landroid/graphics/fonts/FontVariationAxis;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance p0, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$1;

    invoke-direct {p0}, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    array-length p0, p2

    if-le p0, v0, :cond_1

    new-instance p0, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$2;

    invoke-direct {p0}, Lcom/android/keyguard/FontInterpolator$lerp$$inlined$sortBy$2;-><init>()V

    invoke-static {p2, p0}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_3

    array-length v3, p2

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v1, v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    array-length v5, p2

    if-ge v2, v5, :cond_5

    aget-object v5, p2, v2

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    if-nez v3, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    const/4 v6, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :goto_4
    if-nez v6, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p3, v3, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v2, v3, v1}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v1, v4

    move v3, v5

    goto :goto_5

    :cond_8
    if-gez v6, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v5, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v3, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v4, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v4, v3, v1}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v3, v2

    move-object v2, v4

    move v1, v5

    goto :goto_5

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v3, v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p3, v5, v4, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    new-instance v4, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v4, v5, v2}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move-object v2, v4

    :goto_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
    .locals 5

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    return-object p1

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator;->tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/keyguard/FontInterpolator$InterpKey;->set(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/keyguard/FontInterpolator;->tmpInterpKey:Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;

    invoke-direct {v1, p0, p3}, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;-><init>(Lcom/android/keyguard/FontInterpolator;F)V

    invoke-direct {p0, v0, v3, v1}, Lcom/android/keyguard/FontInterpolator;->lerp([Landroid/graphics/fonts/FontVariationAxis;[Landroid/graphics/fonts/FontVariationAxis;Lkotlin/jvm/functions/Function3;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-virtual {v1, p1, v0}, Lcom/android/keyguard/FontInterpolator$VarFontKey;->set(Landroid/graphics/fonts/Font;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator;->verFontCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/keyguard/FontInterpolator;->tmpVarFontKey:Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    new-instance v0, Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_a
    new-instance v1, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v1, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    new-array v2, v2, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v1, v2}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/FontInterpolator;->interpCache:Ljava/util/HashMap;

    new-instance v3, Lcom/android/keyguard/FontInterpolator$InterpKey;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/keyguard/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    const-string p2, "newFont"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/keyguard/FontInterpolator;->verFontCache:Ljava/util/HashMap;

    new-instance p2, Lcom/android/keyguard/FontInterpolator$VarFontKey;

    invoke-direct {p2, p1, v0}, Lcom/android/keyguard/FontInterpolator$VarFontKey;-><init>(Landroid/graphics/fonts/Font;Ljava/util/List;)V

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
