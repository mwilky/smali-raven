.class public final Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;
.super Ljava/lang/Object;
.source "TelephonyActivity.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
