.class public final Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;
.super Ljava/lang/Object;
.source "WifiSignalController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$TrafficStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/connectivity/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiTrafficStateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->setActivity(I)V

    return-void
.end method
