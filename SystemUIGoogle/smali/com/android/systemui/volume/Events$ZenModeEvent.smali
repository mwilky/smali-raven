.class public final enum Lcom/android/systemui/volume/Events$ZenModeEvent;
.super Ljava/lang/Enum;
.source "Events.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZenModeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$ZenModeEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v1, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v3, "ZEN_MODE_OFF"

    const/4 v4, 0x1

    const/16 v5, 0x14f

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v3, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v5, "ZEN_MODE_IMPORTANT_ONLY"

    const/4 v6, 0x2

    const/16 v7, 0x9d

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v5, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v7, "ZEN_MODE_ALARMS_ONLY"

    const/4 v8, 0x3

    const/16 v9, 0x9e

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v7, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v9, "ZEN_MODE_NO_INTERRUPTIONS"

    const/4 v10, 0x4

    const/16 v11, 0x9f

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

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

    iput p3, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$ZenModeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return p0
.end method
