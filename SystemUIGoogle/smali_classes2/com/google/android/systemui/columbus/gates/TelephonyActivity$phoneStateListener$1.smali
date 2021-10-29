.class public final Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;
.super Ljava/lang/Object;
.source "TelephonyActivity.kt"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/TelephonyActivity;-><init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->access$isCallBlocked(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->access$setCallBlocked$p(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;)V

    return-void
.end method
