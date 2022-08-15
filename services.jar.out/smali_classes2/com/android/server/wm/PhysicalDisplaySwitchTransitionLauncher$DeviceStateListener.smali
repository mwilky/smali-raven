.class public Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "PhysicalDisplaySwitchTransitionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;


# direct methods
.method public static synthetic $r8$lambda$DFucA-HWYWe48-c4OjwI5dmEgUM(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;->lambda$new$0(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;->this$0:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    new-instance v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;)V

    invoke-direct {p0, p2, v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->-$$Nest$fputmIsFolded(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Z)V

    return-void
.end method
