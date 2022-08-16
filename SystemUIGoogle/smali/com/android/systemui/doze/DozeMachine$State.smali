.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v2, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v3, 0x1

    const-string v4, "INITIALIZED"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v4, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v5, 0x2

    const-string v6, "DOZE"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v6, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v7, 0x3

    const-string v8, "DOZE_AOD"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v8, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v9, 0x4

    const-string v10, "DOZE_REQUEST_PULSE"

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v10, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v11, 0x5

    const-string v12, "DOZE_PULSING"

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v12, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v13, 0x6

    const-string v14, "DOZE_PULSING_BRIGHT"

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v14, Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v15, 0x7

    const-string v13, "DOZE_PULSE_DONE"

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v13, Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v15, 0x8

    const-string v11, "FINISH"

    invoke-direct {v13, v15, v11}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v13, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v11, Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v15, 0x9

    const-string v9, "DOZE_AOD_PAUSED"

    invoke-direct {v11, v15, v9}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v9, Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v15, 0xa

    const-string v7, "DOZE_AOD_PAUSING"

    invoke-direct {v9, v15, v7}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v9, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v7, Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v15, 0xb

    const-string v5, "DOZE_AOD_DOCKED"

    invoke-direct {v7, v15, v5}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v5, 0xc

    new-array v5, v5, [Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v13, v5, v0

    const/16 v0, 0x9

    aput-object v11, v5, v0

    const/16 v0, 0xa

    aput-object v9, v5, v0

    aput-object v7, v5, v15

    sput-object v5, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method public final isAlwaysOn()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
