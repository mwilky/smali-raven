.class Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;
.super Ljava/lang/Object;
.source "AutoTileManagerGoogle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;


# direct methods
.method public static synthetic $r8$lambda$ZYbs3YsMpesoBviR5iCzfG5_ylA(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->lambda$onReverseChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReverseChanged$0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$500(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$400(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReverseChanged(ZILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {p2}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$000(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p2

    const-string p3, "reverse"

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$100(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$200(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->access$300(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
