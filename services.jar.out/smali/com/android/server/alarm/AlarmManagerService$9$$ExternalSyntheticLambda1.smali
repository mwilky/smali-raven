.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$9;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$9;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$9;

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$9;

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$9;->$r8$lambda$rKMqoDhGfnkrswtqMN5Pu5Sb-Hs(Lcom/android/server/alarm/AlarmManagerService$9;ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method
