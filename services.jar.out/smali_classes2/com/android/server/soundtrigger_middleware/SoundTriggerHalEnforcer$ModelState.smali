.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
.super Ljava/lang/Enum;
.source "SoundTriggerHalEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v3, "ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v5, "PENDING_STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    .locals 1

    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    .locals 1

    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-object v0
.end method
