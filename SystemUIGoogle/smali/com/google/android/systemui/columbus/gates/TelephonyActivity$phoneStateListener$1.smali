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
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->isCallBlocked:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->isCallBlocked:Z

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
