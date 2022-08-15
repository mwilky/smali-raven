.class Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "Vcn.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnUserMobileDataStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserMobileDataStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
