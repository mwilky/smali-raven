.class public final Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;
.super Ljava/lang/Object;
.source "SilenceCall.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/SilenceCall;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->access$updatePhoneStateListener(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    return-void
.end method
