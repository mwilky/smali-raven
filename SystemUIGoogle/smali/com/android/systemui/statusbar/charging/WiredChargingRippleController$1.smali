.class final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/commandline/Command;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$ChargingRippleCommand;

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$ChargingRippleCommand;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    return-object v0
.end method
