.class public final enum Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;
.super Ljava/lang/Enum;
.source "LowLightDockEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

.field public static final enum AMBIENT_LIGHT_TO_DARK:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

.field public static final enum AMBIENT_LIGHT_TO_LIGHT:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

.field public static final enum LOW_LIGHT_STARTED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

.field public static final enum LOW_LIGHT_STOPPED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    const-string v1, "AMBIENT_LIGHT_TO_DARK"

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->AMBIENT_LIGHT_TO_DARK:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    new-instance v1, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    const-string v3, "LOW_LIGHT_STARTED"

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->LOW_LIGHT_STARTED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    new-instance v3, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    const-string v5, "AMBIENT_LIGHT_TO_LIGHT"

    const/4 v6, 0x2

    const/16 v7, 0x3e9

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->AMBIENT_LIGHT_TO_LIGHT:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    new-instance v5, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    const-string v7, "LOW_LIGHT_STOPPED"

    const/4 v8, 0x3

    const/16 v9, 0x3ea

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->LOW_LIGHT_STOPPED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->$VALUES:[Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

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

    iput p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->$VALUES:[Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->id:I

    return p0
.end method
