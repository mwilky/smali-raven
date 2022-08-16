.class public final enum Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;
.super Ljava/lang/Enum;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WiredChargingRippleEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

.field public static final enum CHARGING_RIPPLE_PLAYED:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;


# instance fields
.field private final _id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->CHARGING_RIPPLE_PLAYED:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->$VALUES:[Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "CHARGING_RIPPLE_PLAYED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x33d

    iput v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->$VALUES:[Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$WiredChargingRippleEvent;->_id:I

    return p0
.end method
