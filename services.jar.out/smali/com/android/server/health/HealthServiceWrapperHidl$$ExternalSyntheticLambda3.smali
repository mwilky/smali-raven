.class public final synthetic Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableInt;

.field public final synthetic f$1:Landroid/os/BatteryProperty;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;->f$1:Landroid/os/BatteryProperty;

    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;->f$0:Landroid/util/MutableInt;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;->f$1:Landroid/os/BatteryProperty;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl;->$r8$lambda$IqraLggnzQNzsbdXpALHFffSMkg(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method