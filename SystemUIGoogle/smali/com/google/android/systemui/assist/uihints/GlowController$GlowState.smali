.class final enum Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
.super Ljava/lang/Enum;
.source "GlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/GlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v1, 0x0

    const-string v2, "SHORT_DARK_BACKGROUND"

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v3, 0x1

    const-string v4, "SHORT_LIGHT_BACKGROUND"

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v5, 0x2

    const-string v6, "TALL_DARK_BACKGROUND"

    invoke-direct {v4, v5, v6}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v6, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v7, 0x3

    const-string v8, "TALL_LIGHT_BACKGROUND"

    invoke-direct {v6, v7, v8}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v8, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v9, 0x4

    const-string v10, "GONE"

    invoke-direct {v8, v9, v10}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->$VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->$VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object v0
.end method
