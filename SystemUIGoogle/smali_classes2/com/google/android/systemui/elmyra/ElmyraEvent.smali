.class public final enum Lcom/google/android/systemui/elmyra/ElmyraEvent;
.super Ljava/lang/Enum;
.source "ElmyraEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/elmyra/ElmyraEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const-string v1, "ELMYRA_PRIMED"

    const/4 v2, 0x0

    const/16 v3, 0x22f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const-string v3, "ELMYRA_RELEASED"

    const/4 v4, 0x1

    const/16 v5, 0x230

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v3, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const-string v5, "ELMYRA_TRIGGERED_AP_SUSPENDED"

    const/4 v6, 0x2

    const/16 v7, 0x231

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v5, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const-string v7, "ELMYRA_TRIGGERED_SCREEN_OFF"

    const/4 v8, 0x3

    const/16 v9, 0x23f

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v7, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const-string v9, "ELMYRA_TRIGGERED_SCREEN_ON"

    const/4 v10, 0x4

    const/16 v11, 0x240

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/systemui/elmyra/ElmyraEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/systemui/elmyra/ElmyraEvent;->$VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/elmyra/ElmyraEvent;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/elmyra/ElmyraEvent;
    .locals 4

    sget-object v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->$VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/ElmyraEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->id:I

    return p0
.end method
