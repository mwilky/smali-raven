.class final enum Lcom/android/keyguard/CarrierTextManager$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/CarrierTextManager$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

.field public static final enum SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v3, "NetworkLocked"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/CarrierTextManager$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v3, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v5, "SimMissing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v5, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v7, "SimMissingLocked"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v7, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v9, "SimPukLocked"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v9, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v11, "SimLocked"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v11, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v13, "SimPermDisabled"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v13, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v15, "SimNotReady"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v15, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v14, "SimIoError"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v14, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const-string v12, "SimUnknown"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/android/keyguard/CarrierTextManager$StatusMode;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/android/keyguard/CarrierTextManager$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierTextManager$StatusMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/CarrierTextManager$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object v0
.end method
