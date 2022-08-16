.class public final enum Lcom/android/systemui/qs/external/TileRequestDialogEvent;
.super Ljava/lang/Enum;
.source "TileRequestDialogEventLogger.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/external/TileRequestDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/external/TileRequestDialogEvent;

.field public static final enum TILE_REQUEST_DIALOG_DISMISSED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

.field public static final enum TILE_REQUEST_DIALOG_SHOWN:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

.field public static final enum TILE_REQUEST_DIALOG_TILE_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

.field public static final enum TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

.field public static final enum TILE_REQUEST_DIALOG_TILE_NOT_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;


# instance fields
.field private final _id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const-string v1, "TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED"

    const/4 v2, 0x0

    const/16 v3, 0x395

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/external/TileRequestDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    new-instance v1, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const-string v3, "TILE_REQUEST_DIALOG_SHOWN"

    const/4 v4, 0x1

    const/16 v5, 0x396

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/qs/external/TileRequestDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_SHOWN:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    new-instance v3, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const-string v5, "TILE_REQUEST_DIALOG_DISMISSED"

    const/4 v6, 0x2

    const/16 v7, 0x397

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/qs/external/TileRequestDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_DISMISSED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    new-instance v5, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const-string v7, "TILE_REQUEST_DIALOG_TILE_ADDED"

    const/4 v8, 0x3

    const/16 v9, 0x398

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/qs/external/TileRequestDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    new-instance v7, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const-string v9, "TILE_REQUEST_DIALOG_TILE_NOT_ADDED"

    const/4 v10, 0x4

    const/16 v11, 0x399

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/qs/external/TileRequestDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_NOT_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->$VALUES:[Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/external/TileRequestDialogEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/external/TileRequestDialogEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->$VALUES:[Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->_id:I

    return p0
.end method
