.class final enum Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
.super Ljava/lang/Enum;
.source "GlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/GlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
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
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v1, "SHORT_DARK_BACKGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v3, "SHORT_LIGHT_BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v5, "TALL_DARK_BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v5, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v7, "TALL_LIGHT_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v7, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v9, "GONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->$VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

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
