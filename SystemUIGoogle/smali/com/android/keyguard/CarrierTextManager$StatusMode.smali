.class final enum Lcom/android/keyguard/CarrierTextManager$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
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
.field public static final synthetic $VALUES:[Lcom/android/keyguard/CarrierTextManager$StatusMode;

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
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v2, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v3, 0x1

    const-string v4, "NetworkLocked"

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v5, 0x2

    const-string v6, "SimMissing"

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v6, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v7, 0x3

    const-string v8, "SimMissingLocked"

    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v8, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v9, 0x4

    const-string v10, "SimPukLocked"

    invoke-direct {v8, v9, v10}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v10, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v11, 0x5

    const-string v12, "SimLocked"

    invoke-direct {v10, v11, v12}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v12, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v13, 0x6

    const-string v14, "SimPermDisabled"

    invoke-direct {v12, v13, v14}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v14, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v15, 0x7

    const-string v13, "SimNotReady"

    invoke-direct {v14, v15, v13}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v13, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/16 v15, 0x8

    const-string v11, "SimIoError"

    invoke-direct {v13, v15, v11}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v13, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    new-instance v11, Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/16 v15, 0x9

    const-string v9, "SimUnknown"

    invoke-direct {v11, v15, v9}, Lcom/android/keyguard/CarrierTextManager$StatusMode;-><init>(ILjava/lang/String;)V

    sput-object v11, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/16 v9, 0xa

    new-array v9, v9, [Lcom/android/keyguard/CarrierTextManager$StatusMode;

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

    sput-object v9, Lcom/android/keyguard/CarrierTextManager$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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
