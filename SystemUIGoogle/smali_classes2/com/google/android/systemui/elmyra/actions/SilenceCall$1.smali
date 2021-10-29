.class Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;
.super Ljava/lang/Object;
.source "SilenceCall.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SilenceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$000(Lcom/google/android/systemui/elmyra/actions/SilenceCall;I)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$100(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->access$102(Lcom/google/android/systemui/elmyra/actions/SilenceCall;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    return-void
.end method
