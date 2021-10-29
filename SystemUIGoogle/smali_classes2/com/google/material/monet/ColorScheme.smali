.class public final Lcom/google/material/monet/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/material/monet/ColorScheme$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/material/monet/ColorScheme$Companion;


# instance fields
.field private final accent1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final accent2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final accent3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final darkTheme:Z

.field private final neutral1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final neutral2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/material/monet/ColorScheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/material/monet/ColorScheme$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/material/monet/ColorScheme;->Companion:Lcom/google/material/monet/ColorScheme$Companion;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/material/monet/ColorScheme;->darkTheme:Z

    if-nez p1, :cond_0

    const p1, -0xe4910d

    :cond_0
    invoke-static {p1}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    invoke-static {p2, p1}, Lcom/google/material/monet/Shades;->of(FF)[I

    move-result-object p1

    const-string v0, "of(hue, chroma)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/ColorScheme;->accent1:Ljava/util/List;

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p2, p1}, Lcom/google/material/monet/Shades;->of(FF)[I

    move-result-object p1

    const-string v0, "of(hue, ACCENT2_CHROMA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/ColorScheme;->accent2:Ljava/util/List;

    const/high16 p1, 0x42700000    # 60.0f

    add-float/2addr p1, p2

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {p1, v0}, Lcom/google/material/monet/Shades;->of(FF)[I

    move-result-object p1

    const-string v0, "of(hue + ACCENT3_HUE_SHIFT, ACCENT3_CHROMA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/ColorScheme;->accent3:Ljava/util/List;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p2, p1}, Lcom/google/material/monet/Shades;->of(FF)[I

    move-result-object p1

    const-string v0, "of(hue, NEUTRAL1_CHROMA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/ColorScheme;->neutral1:Ljava/util/List;

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p2, p1}, Lcom/google/material/monet/Shades;->of(FF)[I

    move-result-object p1

    const-string p2, "of(hue, NEUTRAL2_CHROMA)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/ColorScheme;->neutral2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAccent1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/material/monet/ColorScheme;->accent1:Ljava/util/List;

    return-object p0
.end method

.method public final getAllAccentColors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/material/monet/ColorScheme;->accent1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/material/monet/ColorScheme;->accent2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/material/monet/ColorScheme;->accent3:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getAllNeutralColors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/material/monet/ColorScheme;->neutral1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/material/monet/ColorScheme;->neutral2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorScheme {\n  neutral1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/material/monet/ColorScheme;->Companion:Lcom/google/material/monet/ColorScheme$Companion;

    iget-object v2, p0, Lcom/google/material/monet/ColorScheme;->neutral1:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/material/monet/ColorScheme$Companion;->access$humanReadable(Lcom/google/material/monet/ColorScheme$Companion;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  neutral2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/material/monet/ColorScheme;->neutral2:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/material/monet/ColorScheme$Companion;->access$humanReadable(Lcom/google/material/monet/ColorScheme$Companion;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  accent1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/material/monet/ColorScheme;->accent1:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/material/monet/ColorScheme$Companion;->access$humanReadable(Lcom/google/material/monet/ColorScheme$Companion;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  accent2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/material/monet/ColorScheme;->accent2:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/material/monet/ColorScheme$Companion;->access$humanReadable(Lcom/google/material/monet/ColorScheme$Companion;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  accent3: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/material/monet/ColorScheme;->accent3:Ljava/util/List;

    invoke-static {v1, p0}, Lcom/google/material/monet/ColorScheme$Companion;->access$humanReadable(Lcom/google/material/monet/ColorScheme$Companion;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
