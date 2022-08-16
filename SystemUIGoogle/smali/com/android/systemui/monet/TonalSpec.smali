.class public final Lcom/android/systemui/monet/TonalSpec;
.super Ljava/lang/Object;
.source "ColorScheme.kt"


# instance fields
.field public final chroma:Lcom/android/systemui/monet/Chroma;

.field public final hue:Lcom/android/systemui/monet/Hue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    iput-object p2, p0, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    return-void
.end method


# virtual methods
.method public final shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    invoke-interface {v0, p1}, Lcom/android/systemui/monet/Hue;->get(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    invoke-interface {p0, p1}, Lcom/android/systemui/monet/Chroma;->get(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide p0

    double-to-float v0, v0

    double-to-float p0, p0

    const/16 p1, 0xc

    new-array v1, p1, [I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x42c60000    # 99.0f

    invoke-static {v0, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42be0000    # 95.0f

    invoke-static {v0, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    :goto_0
    if-ge v2, p1, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const v3, 0x42466666    # 49.6f

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0xa

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    :goto_1
    invoke-static {v0, p0, v3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v4, p1, :cond_2

    aget v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object p0
.end method
