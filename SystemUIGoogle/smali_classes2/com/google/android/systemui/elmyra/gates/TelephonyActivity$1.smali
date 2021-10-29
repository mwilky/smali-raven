.class Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;
.super Ljava/lang/Object;
.source "TelephonyActivity.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$000(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;I)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$100(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->access$102(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void
.end method
