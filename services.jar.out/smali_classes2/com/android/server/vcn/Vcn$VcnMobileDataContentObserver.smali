.class Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnMobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
