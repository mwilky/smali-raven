.class public final Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;
.super Ljava/lang/Object;
.source "SilenceCall.kt"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->access$isPhoneRinging(Lcom/google/android/systemui/columbus/actions/SilenceCall;I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->access$setPhoneRinging$p(Lcom/google/android/systemui/columbus/actions/SilenceCall;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SilenceCall;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    return-void
.end method
