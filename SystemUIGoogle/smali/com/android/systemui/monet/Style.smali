.class public final enum Lcom/android/systemui/monet/Style;
.super Ljava/lang/Enum;
.source "ColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/monet/Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/monet/Style;

.field public static final enum CONTENT:Lcom/android/systemui/monet/Style;

.field public static final enum EXPRESSIVE:Lcom/android/systemui/monet/Style;

.field public static final enum FRUIT_SALAD:Lcom/android/systemui/monet/Style;

.field public static final enum RAINBOW:Lcom/android/systemui/monet/Style;

.field public static final enum SPRITZ:Lcom/android/systemui/monet/Style;

.field public static final enum TONAL_SPOT:Lcom/android/systemui/monet/Style;

.field public static final enum VIBRANT:Lcom/android/systemui/monet/Style;


# instance fields
.field private final coreSpec:Lcom/android/systemui/monet/CoreSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/android/systemui/monet/Style;

    new-instance v7, Lcom/android/systemui/monet/CoreSpec;

    new-instance v2, Lcom/android/systemui/monet/TonalSpec;

    new-instance v1, Landroidx/cardview/R$attr;

    invoke-direct {v1}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v3, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-direct {v3, v8, v9}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v3, Lcom/android/systemui/monet/TonalSpec;

    new-instance v1, Landroidx/cardview/R$attr;

    invoke-direct {v1}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v4, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-direct {v4, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    new-instance v1, Landroidx/cardview/R$attr;

    invoke-direct {v1}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v5, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    new-instance v1, Landroidx/cardview/R$attr;

    invoke-direct {v1}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    new-instance v1, Landroidx/cardview/R$attr;

    invoke-direct {v1}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v8, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v1, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v1, "SPRITZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v0, Lcom/android/systemui/monet/Style;->SPRITZ:Lcom/android/systemui/monet/Style;

    new-instance v1, Lcom/android/systemui/monet/Style;

    new-instance v9, Lcom/android/systemui/monet/CoreSpec;

    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    new-instance v3, Landroidx/cardview/R$attr;

    invoke-direct {v3}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v5, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    invoke-direct {v5, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    new-instance v3, Landroidx/cardview/R$attr;

    invoke-direct {v3}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v6, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v3, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    new-instance v3, Lcom/android/systemui/monet/HueAdd;

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    invoke-direct {v3, v7, v8}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    invoke-direct {v7, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v3, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    new-instance v3, Landroidx/cardview/R$attr;

    invoke-direct {v3}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    invoke-direct {v8, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v7, v3, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    new-instance v3, Landroidx/cardview/R$attr;

    invoke-direct {v3}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v12, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v12, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v8, v3, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v3, v9

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v3, "TONAL_SPOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v9}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v1, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    new-instance v3, Lcom/android/systemui/monet/Style;

    new-instance v5, Lcom/android/systemui/monet/CoreSpec;

    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v8, Lcom/android/systemui/monet/ChromaMaxOut;

    invoke-direct {v8}, Lcom/android/systemui/monet/ChromaMaxOut;-><init>()V

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    new-instance v8, Lcom/android/systemui/monet/HueVibrantSecondary;

    invoke-direct {v8}, Lcom/android/systemui/monet/HueVibrantSecondary;-><init>()V

    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v9, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    new-instance v9, Lcom/android/systemui/monet/HueVibrantTertiary;

    invoke-direct {v9}, Lcom/android/systemui/monet/HueVibrantTertiary;-><init>()V

    new-instance v4, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    invoke-direct {v4, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v8, v9, v4}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    new-instance v9, Landroidx/cardview/R$attr;

    invoke-direct {v9}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v2, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-direct {v2, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v9, v2}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v2, Lcom/android/systemui/monet/TonalSpec;

    new-instance v9, Landroidx/cardview/R$attr;

    invoke-direct {v9}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-direct {v10, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v9, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v18 .. v23}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v2, "VIBRANT"

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v5}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v3, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    new-instance v2, Lcom/android/systemui/monet/Style;

    new-instance v11, Lcom/android/systemui/monet/CoreSpec;

    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    const-wide/high16 v7, 0x406e000000000000L    # 240.0

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v5, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Lcom/android/systemui/monet/HueExpressiveSecondary;

    invoke-direct {v5}, Lcom/android/systemui/monet/HueExpressiveSecondary;-><init>()V

    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v8, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v7, v5, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Lcom/android/systemui/monet/HueExpressiveTertiary;

    invoke-direct {v5}, Lcom/android/systemui/monet/HueExpressiveTertiary;-><init>()V

    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    invoke-direct {v9, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v8, v5, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    invoke-direct {v10, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v9, v5, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    new-instance v12, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v13, 0x4028000000000000L    # 12.0

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v10, v5, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v5, "EXPRESSIVE"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v11}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v2, Lcom/android/systemui/monet/Style;->EXPRESSIVE:Lcom/android/systemui/monet/Style;

    new-instance v5, Lcom/android/systemui/monet/Style;

    new-instance v13, Lcom/android/systemui/monet/CoreSpec;

    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4048000000000000L    # 48.0

    invoke-direct {v9, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v8, v7, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v9, v7, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Lcom/android/systemui/monet/HueAdd;

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    invoke-direct {v7, v11, v12}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    new-instance v11, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    invoke-direct {v11, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v10, v7, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v12, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/16 v14, 0x0

    invoke-direct {v12, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v11, v7, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v12, v7, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v6, "RAINBOW"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v13}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v5, Lcom/android/systemui/monet/Style;->RAINBOW:Lcom/android/systemui/monet/Style;

    new-instance v6, Lcom/android/systemui/monet/Style;

    new-instance v14, Lcom/android/systemui/monet/CoreSpec;

    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    new-instance v8, Landroidx/cardview/R$color;

    invoke-direct {v8}, Landroidx/cardview/R$color;-><init>()V

    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v11, 0x4048000000000000L    # 48.0

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v9, v8, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    new-instance v8, Landroidx/cardview/R$color;

    invoke-direct {v8}, Landroidx/cardview/R$color;-><init>()V

    new-instance v11, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v12, 0x4042000000000000L    # 36.0

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v10, v8, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    new-instance v8, Landroidx/cardview/R$attr;

    invoke-direct {v8}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v15, Lcom/android/systemui/monet/ChromaConstant;

    invoke-direct {v15, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v11, v8, v15}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    new-instance v8, Landroidx/cardview/R$attr;

    invoke-direct {v8}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v13, Lcom/android/systemui/monet/ChromaConstant;

    move-object/from16 v16, v5

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v13, v4, v5}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v12, v8, v13}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v13, Lcom/android/systemui/monet/TonalSpec;

    new-instance v4, Landroidx/cardview/R$attr;

    invoke-direct {v4}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v5, Lcom/android/systemui/monet/ChromaConstant;

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v13, v4, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v4, "FRUIT_SALAD"

    const/4 v5, 0x5

    invoke-direct {v6, v4, v5, v14}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v6, Lcom/android/systemui/monet/Style;->FRUIT_SALAD:Lcom/android/systemui/monet/Style;

    new-instance v4, Lcom/android/systemui/monet/Style;

    new-instance v13, Lcom/android/systemui/monet/CoreSpec;

    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v9, Landroidx/preference/R$color;

    invoke-direct {v9}, Landroidx/preference/R$color;-><init>()V

    invoke-direct {v8, v7, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v10, Lcom/android/systemui/monet/ChromaMultiple;

    const-wide v11, 0x3fd51eb851eb851fL    # 0.33

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v9, v7, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    new-instance v7, Landroidx/cardview/R$attr;

    invoke-direct {v7}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v11, Lcom/android/systemui/monet/ChromaMultiple;

    move-object v14, v6

    const-wide v5, 0x3fe51eb851eb851fL    # 0.66

    invoke-direct {v11, v5, v6}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v10, v7, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Landroidx/cardview/R$attr;

    invoke-direct {v5}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v6, Lcom/android/systemui/monet/ChromaMultiple;

    move-object/from16 v17, v14

    const-wide v14, 0x3fb5532617c1bda5L    # 0.0833

    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v11, v5, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    new-instance v5, Landroidx/cardview/R$attr;

    invoke-direct {v5}, Landroidx/cardview/R$attr;-><init>()V

    new-instance v6, Lcom/android/systemui/monet/ChromaMultiple;

    const-wide v14, 0x3fc5532617c1bda5L    # 0.1666

    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v12, v5, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    const-string v5, "CONTENT"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6, v13}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    sput-object v4, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/android/systemui/monet/Style;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v16, v5, v0

    const/4 v0, 0x5

    aput-object v17, v5, v0

    aput-object v4, v5, v6

    sput-object v5, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/monet/CoreSpec;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/monet/Style;->coreSpec:Lcom/android/systemui/monet/CoreSpec;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;
    .locals 1

    const-class v0, Lcom/android/systemui/monet/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/monet/Style;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/monet/Style;
    .locals 1

    sget-object v0, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/monet/Style;

    return-object v0
.end method


# virtual methods
.method public final getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet()Lcom/android/systemui/monet/CoreSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/monet/Style;->coreSpec:Lcom/android/systemui/monet/CoreSpec;

    return-object p0
.end method
