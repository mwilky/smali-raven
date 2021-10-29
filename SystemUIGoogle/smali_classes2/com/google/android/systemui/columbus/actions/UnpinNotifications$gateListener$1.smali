.class public final Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;
.super Ljava/lang/Object;
.source "UnpinNotifications.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UnpinNotifications;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ljava/util/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->access$getSilenceAlertsDisabled$p(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->access$onSilenceAlertsDisabled(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->access$onSilenceAlertsEnabled(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V

    :goto_0
    return-void
.end method
