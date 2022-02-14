.class Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "Vcn.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VcnUserMobileDataStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/Vcn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserMobileDataStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
