.class public final synthetic Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensorprivacy/AllSensorStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/AllSensorStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sensorprivacy/AllSensorStateController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sensorprivacy/AllSensorStateController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->$r8$lambda$DA9hc-HUJxG--Ss50h240r8gPRg(Lcom/android/server/sensorprivacy/AllSensorStateController;Z)V

    return-void
.end method
