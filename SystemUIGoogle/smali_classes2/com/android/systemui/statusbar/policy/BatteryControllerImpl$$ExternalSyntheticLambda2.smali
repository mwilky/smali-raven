.class public final synthetic Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->$r8$lambda$Ge-Ys7ILk5pewXyGhSh0z8wFrx8(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method
