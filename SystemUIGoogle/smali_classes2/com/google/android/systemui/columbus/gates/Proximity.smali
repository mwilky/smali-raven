.class public Lcom/google/android/systemui/columbus/gates/Proximity;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "Proximity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/Proximity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/gates/Proximity$Companion;


# instance fields
.field private final proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

.field private final proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/gates/Proximity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/gates/Proximity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/gates/Proximity;->Companion:Lcom/google/android/systemui/columbus/gates/Proximity$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proximitySensor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/Proximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    const-string p0, "Columbus/Proximity"

    invoke-interface {p2, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/Proximity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/Proximity;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/Proximity;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method
