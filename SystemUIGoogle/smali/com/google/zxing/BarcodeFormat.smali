.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/BarcodeFormat;

.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x0

    const-string v2, "AZTEC"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x1

    const-string v4, "CODABAR"

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    const/4 v5, 0x2

    const-string v6, "CODE_39"

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    const/4 v7, 0x3

    const-string v8, "CODE_93"

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    const/4 v9, 0x4

    const-string v10, "CODE_128"

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    const/4 v11, 0x5

    const-string v12, "DATA_MATRIX"

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    const/4 v13, 0x6

    const-string v14, "EAN_8"

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    const/4 v15, 0x7

    const-string v13, "EAN_13"

    invoke-direct {v14, v15, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0x8

    const-string v11, "ITF"

    invoke-direct {v13, v15, v11}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v13, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0x9

    const-string v9, "MAXICODE"

    invoke-direct {v11, v15, v9}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xa

    const-string v7, "PDF_417"

    invoke-direct {v9, v15, v7}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v9, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xb

    const-string v5, "QR_CODE"

    invoke-direct {v7, v15, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xc

    const-string v3, "RSS_14"

    invoke-direct {v5, v15, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xd

    const-string v1, "RSS_EXPANDED"

    invoke-direct {v3, v15, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xe

    move-object/from16 v17, v3

    const-string v3, "UPC_A"

    invoke-direct {v1, v15, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0xf

    move-object/from16 v18, v1

    const-string v1, "UPC_E"

    invoke-direct {v3, v15, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    const/16 v15, 0x10

    move-object/from16 v19, v3

    const-string v3, "UPC_EAN_EXTENSION"

    invoke-direct {v1, v15, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/google/zxing/BarcodeFormat;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v11, v3, v0

    const/16 v0, 0xa

    aput-object v9, v3, v0

    const/16 v0, 0xb

    aput-object v7, v3, v0

    const/16 v0, 0xc

    aput-object v5, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    aput-object v1, v3, v15

    sput-object v3, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
