.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

.field public final synthetic f$1:Landroid/os/Temperature;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/Temperature;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/Temperature;

    invoke-static {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->$r8$lambda$jle4RAfd1f0qorg84L_kZGMJ0zQ(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V

    return-void
.end method
