.class public final enum Lcom/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/EncodeHintType;

.field public static final enum AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

.field public static final enum DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum MARGIN:Lcom/google/zxing/EncodeHintType;

.field public static final enum MAX_SIZE:Lcom/google/zxing/EncodeHintType;

.field public static final enum MIN_SIZE:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x0

    const-string v2, "ERROR_CORRECTION"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    new-instance v2, Lcom/google/zxing/EncodeHintType;

    const/4 v3, 0x1

    const-string v4, "CHARACTER_SET"

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    new-instance v4, Lcom/google/zxing/EncodeHintType;

    const/4 v5, 0x2

    const-string v6, "DATA_MATRIX_SHAPE"

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    new-instance v6, Lcom/google/zxing/EncodeHintType;

    const/4 v7, 0x3

    const-string v8, "MIN_SIZE"

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    new-instance v8, Lcom/google/zxing/EncodeHintType;

    const/4 v9, 0x4

    const-string v10, "MAX_SIZE"

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    new-instance v10, Lcom/google/zxing/EncodeHintType;

    const/4 v11, 0x5

    const-string v12, "MARGIN"

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    new-instance v12, Lcom/google/zxing/EncodeHintType;

    const/4 v13, 0x6

    const-string v14, "PDF417_COMPACT"

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    new-instance v14, Lcom/google/zxing/EncodeHintType;

    const/4 v15, 0x7

    const-string v13, "PDF417_COMPACTION"

    invoke-direct {v14, v15, v13}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    new-instance v13, Lcom/google/zxing/EncodeHintType;

    const/16 v15, 0x8

    const-string v11, "PDF417_DIMENSIONS"

    invoke-direct {v13, v15, v11}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v13, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    new-instance v11, Lcom/google/zxing/EncodeHintType;

    const/16 v15, 0x9

    const-string v9, "AZTEC_LAYERS"

    invoke-direct {v11, v15, v9}, Lcom/google/zxing/EncodeHintType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    const/16 v9, 0xa

    new-array v9, v9, [Lcom/google/zxing/EncodeHintType;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    const/16 v0, 0x8

    aput-object v13, v9, v0

    aput-object v11, v9, v15

    sput-object v9, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/EncodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/EncodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/EncodeHintType;
    .locals 1

    sget-object v0, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/EncodeHintType;

    return-object v0
.end method
