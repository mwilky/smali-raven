.class public final enum Lcom/android/server/app/GameManagerService$FrameRate;
.super Ljava/lang/Enum;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/app/GameManagerService$FrameRate;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

.field public static final enum FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;


# instance fields
.field public final fps:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v1, "FPS_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v1, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v3, "FPS_30"

    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v3, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v5, "FPS_40"

    const/4 v6, 0x2

    const/16 v7, 0x28

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v5, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v7, "FPS_45"

    const/4 v8, 0x3

    const/16 v9, 0x2d

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v7, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v9, "FPS_60"

    const/4 v10, 0x4

    const/16 v11, 0x3c

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v9, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v11, "FPS_90"

    const/4 v12, 0x5

    const/16 v13, 0x5a

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v11, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v13, "FPS_120"

    const/4 v14, 0x6

    const/16 v15, 0x78

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

    new-instance v13, Lcom/android/server/app/GameManagerService$FrameRate;

    const-string v15, "FPS_INVALID"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/app/GameManagerService$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/android/server/app/GameManagerService$FrameRate;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/android/server/app/GameManagerService$FrameRate;->$VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

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

    iput p3, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$FrameRate;
    .locals 1

    const-class v0, Lcom/android/server/app/GameManagerService$FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$FrameRate;

    return-object p0
.end method

.method public static values()[Lcom/android/server/app/GameManagerService$FrameRate;
    .locals 1

    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->$VALUES:[Lcom/android/server/app/GameManagerService$FrameRate;

    invoke-virtual {v0}, [Lcom/android/server/app/GameManagerService$FrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/app/GameManagerService$FrameRate;

    return-object v0
.end method
